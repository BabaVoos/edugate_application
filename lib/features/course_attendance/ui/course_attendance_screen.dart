import 'package:edugate_applocation/features/course_attendance/logic/cubit/course_attendance_cubit.dart';
import 'package:edugate_applocation/features/course_attendance/logic/cubit/course_attendance_state.dart';
import 'package:edugate_applocation/features/home/data/models/get_courses_repsonse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/sub_screens_app_bar.dart';
import 'widgets/course_attendance_list_view.dart';
import 'widgets/courses_loading_widget.dart';

class CourseAttendanceScreen extends StatefulWidget {
  const CourseAttendanceScreen({
    super.key,
    required this.course,
  });

  final GetCoursesResponse course;

  @override
  State<CourseAttendanceScreen> createState() => _CourseAttendanceScreenState();
}

class _CourseAttendanceScreenState extends State<CourseAttendanceScreen> {

  @override
  void initState() {
    context.read<CourseAttendanceCubit>().emitGetCourseAttendance(
        courseId: widget.course.courseId!, groupId: widget.course.groupId!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildSubScreensAppBar(context, widget.course.courseName!),
      body: BlocBuilder<CourseAttendanceCubit, CourseAttendanceState>(
        builder: (context, state) {
          if (state is GetCourseAttendanceLoading) {
            return const AttendanceLoadingWidget();
          } else if (state is GetCourseAttendanceSuccess) {
            return CourseAttendanceListView(
              attendance: state.data[0].attendanceStatus,
              course: widget.course,
            );
          } else if (state is GetCourseAttendanceFailure) {
            return Center(
              child: Text(
                state.error,
                style: TextStyles.font16GreyMedium,
              ),
            );
          } else {
            return Center(
              child: Text(
                'Please try again later',
                style: TextStyles.font16GreyMedium,
              ),
            );
          }
        },
      ),
    );
  }
}
