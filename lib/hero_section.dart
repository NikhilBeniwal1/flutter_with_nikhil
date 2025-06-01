import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  final Map<String, dynamic> data;

  const HeroSection({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      color: Colors.indigo[50],
      child: Column(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(data['photoUrl']),
          ),
          const SizedBox(height: 20),
          Text(
            data['name'],
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            data['tagline'],
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
