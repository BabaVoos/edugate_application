import 'package:edugate_applocation/core/helpers/extinsions.dart';
import 'package:edugate_applocation/features/home/logic/cubit/cubit/home_state.dart';
import 'package:edugate_applocation/features/profile/ui/widgets/show_message_to_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:qr_bar_code_scanner_dialog/qr_bar_code_scanner_dialog.dart';
import '../../../../../core/routing/router.dart';
import '../../../data/models/qr_code_data_model.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());

  final _qrBarCodeScannerDialogPlugin = QrBarCodeScannerDialog();

  Position? position;
  bool? locationService;
  LocationPermission? locationPermission;
  String? currentLocation;

  Future<QRCodeDataModel> decodeQrData({required String qrData}) async {
    List<String> decodedData = qrData.split('- ');
    return QRCodeDataModel(
      courseName: decodedData[0].trim(),
      group: decodedData[1].trim(),
      week: decodedData[2].trim(),
      longitude: double.parse(decodedData[3].trim()),
      latitude: double.parse(decodedData[4].trim()),
      time: DateTime.parse(decodedData[5].trim()),
    );
  }

  void scanQRCode(BuildContext context) {
    _qrBarCodeScannerDialogPlugin.getScannedQrBarCode(
      context: context,
      onCode: (code) async {
        await decodeQrData(
          qrData: code!,
        ).then(
          (value) {
            checkTimeBetweenGenerateAndScan(value, context);
            return null;
          },
        );
      },
    );
  }

  void checkTimeBetweenGenerateAndScan(
      QRCodeDataModel value, BuildContext context) {
    if (DateTime.now().difference(value.time).inHours < 1) {
      context.pushNamed(
        Routes.checkAttendanceScreen,
        arguments: value,
      );
    } else {
      showMessageToUser(context,
          textAlign: TextAlign.start,
          message:
              'It seems like there has been a gap in your attendance. Don\'t worry, reaching out to your doctor can help get things back on track.');
    }
  }

  void getCurrentLocation() async {
    emit(const HomeState.getLocationLoading());
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
      emit(HomeState.getLocationSuccess(currentLocation!));
    } catch (e) {
      emit(HomeState.getLocationFailed(message: e.toString()));
    }
  }

  Future<void> checkLocationServiceAndPermission() async {
    locationService = await Geolocator.isLocationServiceEnabled();
    locationPermission = await Geolocator.checkPermission();
    
    if (locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();
    }
  }
}
