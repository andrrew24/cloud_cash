import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          shadows: [
            BoxShadow(
              blurRadius: 24,
              offset: const Offset(0, 16),
              color: Colors.black.withOpacity(0.06),
            ),
            BoxShadow(
              blurRadius: 6,
              offset: const Offset(0, 2),
              color: Colors.black.withOpacity(0.04),
            ),
            BoxShadow(
              blurRadius: 1,
              color: Colors.black.withOpacity(0.04),
            ),
          ]),
      child: child,
    );
  }
}
