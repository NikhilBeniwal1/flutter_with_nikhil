import 'package:flutter/material.dart';
import 'package:mysite/app/sections/skills/widgets/skill_card.dart';
import 'package:mysite/app/utils/skil_utils.dart';
import 'package:mysite/app/widgets/custom_text_heading.dart';
import 'package:mysite/core/configs/others/space.dart' show Space;
import 'package:sizer/sizer.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width / 8)
          .copyWith(bottom: height * 0.1),
          child: Column(
  children: [
    const CustomSectionHeading(text: 'Skills'),
    Space.y(3.w)!,
    Wrap(
      spacing: 5.w,
      runSpacing: 3.w,
      alignment: WrapAlignment.center,
      children: skillsList.asMap().entries.map((e)=>SkillCard(icon: e.value.icon)).toList(),
    ),
  ],
)
    );
  }
}