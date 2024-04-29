import 'package:edugate_applocation/core/helpers/extinsions.dart';
import 'package:edugate_applocation/core/helpers/location_helper.dart';
import 'package:edugate_applocation/features/attendance_history/data/models/get_attendance_history_response.dart';
import 'package:edugate_applocation/features/attendance_history/data/repos/get_attendance_history_repo.dart';
import 'package:edugate_applocation/features/home/data/models/get_courses_repsonse.dart';
import 'package:edugate_applocation/features/home/data/reops/get_courses_repo.dart';
import 'package:edugate_applocation/features/home/logic/cubit/cubit/home_state.dart';
import 'package:edugate_applocation/core/widgets/show_message_to_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:qr_bar_code_scanner_dialog/qr_bar_code_scanner_dialog.dart';
import '../../../../../core/routing/router.dart';
import '../../../data/models/qr_code_data_model.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetCoursesRepo _getCoursesRepo;
  final GetAttendanceHistoryRepo _getAttendanceHistoryRepo;
  HomeCubit(this._getCoursesRepo, this._getAttendanceHistoryRepo)
      : super(const HomeState.initial());

  final _qrBarCodeScannerDialogPlugin = QrBarCodeScannerDialog();

  Future<QRCodeDataModel> decodeQrData({required String qrData}) async {
    List<String> decodedData = qrData.split('- ');
    return QRCodeDataModel(
        courseName: decodedData[0].trim(),
        group: decodedData[1].trim(),
        week: decodedData[2].trim(),
        longitude: double.parse(decodedData[3].trim()),
        latitude: double.parse(decodedData[4].trim()),
        time: DateTime.parse(decodedData[5].trim()));
  }

  void scanQRCode(BuildContext context) {
    _qrBarCodeScannerDialogPlugin.getScannedQrBarCode(
      context: context,
      onCode: (code) async {
        await decodeQrData(
          qrData: code!,
        ).then(
          (value) {
            if (checkTimeBetweenGenerateAndScan(value, context) &&
                LocationHelper.checkDistance(
                    value.latitude, value.longitude, context)) {
              context.pushNamed(
                Routes.checkAttendanceScreen,
                arguments: value,
              );
            }
            return null;
          },
        );
      },
    );
  }

  bool checkTimeBetweenGenerateAndScan(
      QRCodeDataModel value, BuildContext context) {
    if (DateTime.now().difference(value.time).inHours < 1) {
      return true;
    } else {
      showMessageToUser(context,
          textAlign: TextAlign.start,
          widget: Lottie.asset(
            'assets/jsons/timer.json',
            height: 100.h,
            width: 100.w,
          ),
          message:
              'It seems like there has been a gap in your attendance. Don\'t worry, reaching out to your doctor can help get things back on track.');
      return false;
    }
  }

  String currentLocation = '';

  void getCurrentLocation() {
    emit(const HomeState.getLocationLoading());
    LocationHelper.getCurrentLocation().then((value) {
      currentLocation = value;
      emit(const HomeState.getLocationSuccess(
        'Current Location',
      ));
    }).catchError((e) {
      print(e);
      emit(HomeState.getLocationFailed(message: e.toString()));
    });
  }

  List<GetCoursesResponse> courses = [];
  List<GetCoursesResponse> emitGetCoursesState() {
    emit(const HomeState.getCoursesLoading());
    _getCoursesRepo.getCourses().then((value) {
      value.when(
        success: (getCoursesRepsonse) {
          courses = getCoursesRepsonse;
          emit(GetCoursesSuccess(getCoursesRepsonse));
        },
        failure: (error) => HomeState.getCoursesFailed(
          message: error.apiErrorModel.errorMessage ?? '',
        ),
      );
    });
    return courses;
  }

  List<GetAttendanceHistoryResponse> attendanceHistory = [];
  Future<List<GetAttendanceHistoryResponse>>
      emitGetAttendanceHistoryState() async {
    emit(const HomeState.getAttendanceHistoryLoading());
    final response = await _getAttendanceHistoryRepo.getAttendanceHistory();
    response.when(
      success: (reponse) {
        attendanceHistory = reponse;
        emit(
          GetAttendanceHistorySuccess(reponse),
        );
      },
      failure: (failure) => HomeState.getAttendanceHistoryFailed(
        message: failure.apiErrorModel.errorMessage ?? '',
      ),
    );
    return attendanceHistory;
  }
}
