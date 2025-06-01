import 'package:flutter/material.dart';

class ResponsiveSectionWrapper extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;

  const ResponsiveSectionWrapper({
    super.key,
    required this.child,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 600;

        return Container(
          width: double.infinity,
          color: backgroundColor ?? Colors.transparent,
          padding: EdgeInsets.symmetric(
            vertical: 40,
            horizontal: isMobile ? 16 : 60,
          ),
          child: child,
        );
      },
    );
  }
}
