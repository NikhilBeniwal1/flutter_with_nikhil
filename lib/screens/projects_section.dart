import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsSection extends StatelessWidget {
  final Map<String, dynamic> data;

  const ProjectsSection({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final List projects = data['projects'];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      color: Colors.white,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Projects',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 20),
          Column(
            children: projects.map((project) {
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: Image.asset(project['image'], width: 60),
                  title: Text(project['title']),
                  subtitle: Text(project['description']),
                  trailing: IconButton(
                    icon: const Icon(Icons.link),
                    onPressed: () {
                      launchUrl(Uri.parse(project['link']),
                          mode: LaunchMode.externalApplication);
                    },
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
