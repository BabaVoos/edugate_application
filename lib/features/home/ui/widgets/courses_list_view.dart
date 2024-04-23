import 'package:edugate_applocation/core/helpers/spacing.dart';
import 'package:edugate_applocation/features/home/data/models/get_courses_repsonse.dart';
import 'package:edugate_applocation/features/home/ui/widgets/course_widget.dart';
import 'package:edugate_applocation/features/home/ui/widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';

class CoursesListView extends StatelessWidget {
  const CoursesListView({
    super.key,
    required this.courses,
  });

  final List<GetCoursesResponse> courses;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeader(
          sectionTitle: 'Courses',
          icon: IconBroken.Category,
        ),
        verticalSpacing(10),
        Padding(
          padding: EdgeInsets.only(left: 24.w),
          child: SizedBox(
            height: 80.h,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: courses.length,
              itemBuilder: (context, index) {
                return CourseWidget(
                  courseName: courses[index].courseName!,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
