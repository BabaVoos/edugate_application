import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lottie/lottie.dart';

import '../widgets/show_message_to_user.dart';

class LocationHelper {
  static bool? locationService;
  static LocationPermission? locationPermission;
  static Position? position;
  static String? currentLocation;

  static Future<void> checkLocationServiceAndPermission() async {
    locationService = await Geolocator.isLocationServiceEnabled();
    locationPermission = await Geolocator.checkPermission();

    if (locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();
    } else if (locationPermission == LocationPermission.deniedForever) {
      locationPermission = await Geolocator.requestPermission();
      openAppSettings();
    } else if (locationPermission == LocationPermission.unableToDetermine) {
      locationPermission = await Geolocator.requestPermission();
    }
  }

  static Future openAppSettings() async {
    await Geolocator.openAppSettings().then(
      (value) {
        print(value);
      },
    ).catchError((e) {
      print("error openAppSettings");
    });
  }

  static Future<String> getCurrentLocation() async {
    try {
      await checkLocationServiceAndPermission();
      position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      List<Placemark> placeMarks = await placemarkFromCoordinates(
        position!.latitude,
        position!.longitude,
      );
      currentLocation =
          '${placeMarks[0].subAdministrativeArea}, ${placeMarks[0].thoroughfare}';

      print(
          'lattitude: ${position!.latitude} longitude: ${position!.longitude}');
      return currentLocation!;
    } catch (e) {
      print(e);
      return '';
    }
  }

  static bool checkDistance(double latitude, double longitude, context) {
    double distance = Geolocator.distanceBetween(
      position!.latitude,
      position!.longitude,
      latitude,
      longitude,
    );
    if (position == null) {
      showMessageToUser(context,
          message: 'Please enable your location firstly, then scan again');
    }

    if (distance < 200) {
      return true;
    }
    showMessageToUser(context,
        textAlign: TextAlign.start,
        widget: Lottie.asset(
          'assets/jsons/location_problem.json',
          height: 100.h,
          width: 100.w,
        ),
        message: 'Please make sure to be close enough to your doctor.');
    return false;
  }
}
