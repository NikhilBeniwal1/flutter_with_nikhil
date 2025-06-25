import 'package:flutter/material.dart';
import 'package:mysite/app/widgets/custom_outline.dart';
import 'package:mysite/core/theme/app_theme.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return CustomOutline(
      strokeWidth: 5,
      radius: size.width * 0.2,
      padding: const EdgeInsets.all(5),
      width: size.width * 0.2,
      height: size.width * 0.2,
      gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            theme.secondaryColor,
            theme.secondaryColor.withOpacity(0),
            theme.primaryColor.withOpacity(0.1),
            theme.primaryColor
          ],
          stops: const [
            0.2,
            0.4,
            0.6,
            1
          ]),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black.withOpacity(0.8),
          image: const DecorationImage(
            fit: BoxFit.cover,
            alignment: Alignment.bottomLeft,
            image: AssetImage('assets/imgs/profile.png'),
          ),
        ),
      ),
    );
  }
}
