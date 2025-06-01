import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  final Map<String, dynamic> data;

  const SkillsSection({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final List skills = data['skills'];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      color: Colors.indigo[50],
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Skills',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: skills
                .map((skill) => Chip(
              label: Text(skill),
              backgroundColor: Colors.indigo[100],
            ))
                .toList(),
          )
        ],
      ),
    );
  }
}
