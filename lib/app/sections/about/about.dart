import 'package:flutter/material.dart';
import 'package:mysite/app/sections/about/image_widget.dart';
import 'package:mysite/app/widgets/custom_text_heading.dart';
import 'package:mysite/changes/strings.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:mysite/core/res/responsive_size.dart';
import 'package:sizer/sizer.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  bool isExpanded = false; // Controls "Read More" state

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var theme = Theme.of(context);
    bool isDesktop = width > 1024;
    bool isMobile = width <= 500; // Check for desktop view

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width / 10).copyWith(
          bottom: width < 1024 ? 40 : 100), // Reduce padding for mobile
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomSectionHeading(text: "About Me"),
          Space.y(1.w)!,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (isDesktop) const ImageWidget(), // Show image only on desktop
              if (isDesktop) Space.x(50)!,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      isExpanded || isDesktop
                          ? aboutText
                          : "${aboutText.substring(0, aboutText.length ~/ 4)}...", // Truncate text for mobile
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: isFontSize(
                            context,
                            isDesktop
                                ? 18
                                : isMobile
                                    ? 14
                                    : 16),
                        fontWeight: FontWeight.w400,
                        color: theme.textColor.withOpacity(0.6),
                      ),
                    ),
                    if (!isDesktop) // Show "Read More" only for mobile/tablet
                      TextButton(
                        onPressed: () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                        },
                        child: Text(
                          isExpanded ? "Read Less" : "Read More",
                          style: TextStyle(
                            color: theme.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
