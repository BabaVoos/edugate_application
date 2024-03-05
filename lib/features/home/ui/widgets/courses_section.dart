import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import '../../../../core/helpers/spacing.dart';
import 'course_widget.dart';
import 'section_header.dart';

class CoursesSection extends StatelessWidget {
  const CoursesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionHeader(
          sectionTitle: 'Courses',
          icon: IconBroken.Category,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              horizontalSpacing(24),
              const CourseWidget(
                courseName: 'Computer',
              ),
              const CourseWidget(
                courseName: 'Software',
              ),
              const CourseWidget(
                courseName: 'Business',
              ),
              const CourseWidget(
                courseName: 'Marketing',
              ),
              const CourseWidget(
                courseName: 'Engineering',
              ),
              const CourseWidget(
                courseName: 'Humanities',
              ),
              const CourseWidget(
                courseName: 'Law',
              ),
              const CourseWidget(
                courseName: 'Music',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
