import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/question_answer_widget.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  // todo : get questions and answers from API
  static final List questionsAndAnswers = [
    {
      'question': 'What is Edugate?',
      'answer':
          'Edugate is a platform that helps students in thier daily attendances at the university.',
    },
    {
      'question': 'How does the app ensure accurate attendance recording?',
      'answer':
          "Attendance is marked in the app by scanning the QR code, ensuring the student's presence within the designated location and time, verifying their identity through face ID, and then confirming the attendance ",
    },
    {
      'question': "QR Code Scan Timing",
      'answer':
          "Scan the QR code within one hour of its generation to mark your attendance accurately."
    },
    {
      'question': "Proximity to Doctor",
      'answer':
          "Make sure you are within a 10-meter radius of the doctor when scanning the QR code for attendance",
    },
    {
      'question': "Face ID",
      'answer':
          "Take a clear photo during the scan that includes only your face to verify your identity successfully.",
    },
    {
      'question': 'Face ID not matching?',
      'answer':
          'Inform your professor about  the problem with the face ID and he will reset the face ID for you.',
    },
    {
      'question':
          'What happens if the location or identity verification fails during QR code scanning?',
      'answer':
          "If the location or identity verification fails during QR code scanning, the application will not mark the student as attended for that lecture.",
    },
    {
      'question':
          'How does the application handle offline attendance tracking?',
      'answer':
          "If any student dont't have access to the internet he can ask the doctor to add him in the attendance list using doctors web app.",
    },
    {
      'question':
          'Are there any privacy concerns associated with using biometric data for attendance tracking?',
      'answer':
          "The application prioritizes user privacy and complies with relevant privacy regulations. Biometric data, such as facial recognition and fingerprints, is securely stored and used only for authentication purposes within the attendance tracking system.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding:
          EdgeInsets.only(left: 16.w, right: 16.h, top: 16.h, bottom: 55.h),
      itemCount: questionsAndAnswers.length,
      itemBuilder: (context, index) {
        return QuestionAnswerWidget(
          question: questionsAndAnswers[index]['question'],
          answer: questionsAndAnswers[index]['answer'],
        );
      },
    );
  }
}
