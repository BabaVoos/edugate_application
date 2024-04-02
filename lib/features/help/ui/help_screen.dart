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
      'question': 'Face ID not matching?',
      'answer':
          'Inform your professor about  the proble mwith the face ID and he will reset the face ID for you.',
    },
    {
      'question':
          'What happens when a user scans the QR code using the application?',
      'answer':
          "When a user scans the QR code, the application captures their location and compares it with the location of the doctor who generated the QR code. It also performs face authentication and verifies the user's fingerprint to ensure their identity.",
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
    {
      'question': "Proximity to Doctor",
      'answer':
          " Ensure you are within 5 meters of the doctor when scanning the QR code for attendance.",
    },
    {
      'question': "QR Code Scan Timing",
      'answer':
          "Scan the QR code within one hour of its generation to mark your attendance accurately."
    },
    {
      'question': "Face ID",
      'answer':
          "Take a clear photo during the scan that includes only your face to verify your identity successfully.",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
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
