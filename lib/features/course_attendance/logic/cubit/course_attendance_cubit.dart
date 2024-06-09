import 'package:edugate_applocation/features/course_attendance/data/repos/get_course_attendance_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/networking/cache_helper.dart';
import '../../data/models/get_course_attendance_request_body.dart';
import 'course_attendance_state.dart';

class CourseAttendanceCubit extends Cubit<CourseAttendanceState> {
  final GetCourseAttendanceRepo _getCourseAttendanceRepo;
  CourseAttendanceCubit(this._getCourseAttendanceRepo)
      : super(const CourseAttendanceState.initial());

  void emitGetCourseAttendance(
      {required int courseId, required int groupId}) async {
    emit(const CourseAttendanceState.getCourseAttendanceLoading());
    final response = await _getCourseAttendanceRepo.getCourseAttendance(
      GetCourseAttendanceRequestBody(
        courseId: courseId,
        groupId: groupId,
        studentId: int.parse(
          await CacheHelper.getData(
            key: 'userName',
          ),
        ),
      ),
    );

    response.when(
      success: (getCourseAttendanceResponse) => emit(
        CourseAttendanceState.getCourseAttendanceSuccess(
          getCourseAttendanceResponse,
        ),
      ),
      failure: (error) {
        emit(
          CourseAttendanceState.getCourseAttendanceFailure(
            error: error.apiErrorModel.errorMessage.toString(),
          ),
        );
      },
    );
  }
}
