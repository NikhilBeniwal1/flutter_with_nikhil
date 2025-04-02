import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SkillCard extends StatefulWidget {
  final String icon;
  const SkillCard({super.key, required this.icon});

  @override
  State<SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDarkTheme = theme.brightness == Brightness.dark;

    return MouseRegion(
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300), // Smooth animation
        curve: Curves.easeInOut,
        width: isHover ? 14.w : 12.w, // Increase size on hover
        height: isHover ? 14.w : 12.w, // Increase size on hover
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: isDarkTheme
              ? const LinearGradient(
                  colors: [Color(0xFF1A1D2A), Color(0xFF292E45)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : const LinearGradient(
                  colors: [Color(0xFFFDFDFD), Color(0xFFEAEAEA)], 
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
          border: Border.all(
            color: isDarkTheme ? const Color(0xFF4F5D75) : const Color(0xFFB0BEC5), 
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: isDarkTheme
                  ? const Color(0xFF0E111E).withOpacity(0.6)
                  : Colors.grey.withOpacity(0.3),
              blurRadius: isHover ? 12 : 8, // Increase shadow on hover
              spreadRadius: isHover ? 2 : 1,
              offset: const Offset(0, 4),
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(8.sp),
          child: Image.asset(widget.icon, fit: BoxFit.contain),
        ),
      ),
    );
  }
}
