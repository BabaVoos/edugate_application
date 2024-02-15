import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/welcome.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: child,
      ),
    );
  }
}
