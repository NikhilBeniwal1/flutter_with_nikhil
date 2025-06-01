import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AboutSection extends StatefulWidget {
  final Map<String, dynamic> data;

  const AboutSection({super.key, required this.data});

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('about-section'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.2) {
          setState(() => _isVisible = true);
        }
      },
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 800),
        opacity: _isVisible ? 1.0 : 0.0,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          color: Colors.white,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('About Me',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(height: 10),
              Text(widget.data['about'],
                  style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
        ),
      ),
    );
  }
}


