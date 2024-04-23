import 'package:edugate_applocation/features/home/data/models/get_courses_repsonse.dart';
import 'package:edugate_applocation/features/home/logic/cubit/cubit/home_cubit.dart';
import 'package:edugate_applocation/features/home/logic/cubit/cubit/home_state.dart';
import 'package:edugate_applocation/features/home/ui/widgets/no_courses_founded_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'courses_list_view.dart';
import 'courses_loading_widget.dart';
import 'no_courses_related_widget.dart';

class CoursesSection extends StatefulWidget {
  const CoursesSection({
    super.key,
  });

  @override
  State<CoursesSection> createState() => _CoursesSectionState();
}

class _CoursesSectionState extends State<CoursesSection> {
  List<GetCoursesResponse> courses = [];

  @override
  void initState() {
    courses = context.read<HomeCubit>().emitGetCoursesState();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is GetCoursesSuccess ||
          current is GetCoursesLoading ||
          current is GetCoursesFailed,
      builder: (contetx, state) {
        if (state is GetCoursesSuccess) {
          courses = state.data;
          return courses.isNotEmpty
              ? CoursesListView(courses: courses)
              : const NoCoursesRelatedWidget();
        } else if (state is GetCoursesLoading) {
          return const CoursesLoadingWidget();
        } else if (state is GetCoursesFailed) {
          return const NoCoursesFoundedWidget();
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
