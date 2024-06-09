import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({
    super.key,
    required this.child,
    this.imagePath,
    this.horizontalPadding,
    this.verticalPadding,
  });

  final Widget child;
  final String? imagePath;
  final double? horizontalPadding;
  final double? verticalPadding;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.sizeOf(context).height,
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding?.w ?? 24.sp,
          vertical: verticalPadding?.h ?? 0,
        ),
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              imagePath ?? 'assets/images/background.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: child,
      ),
    );
  }
}
