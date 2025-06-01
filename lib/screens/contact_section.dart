import 'package:flutter/material.dart';
import 'package:flutter_with_nikhil/widgets/ContactForm.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  final Map<String, dynamic> data;

  const ContactSection({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final contact = data["contact"];
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      color: Colors.indigo[50],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Contact Me',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 20),
          const SizedBox(height: 10),
          ListTile(
            leading: const Icon(Icons.email),
            title: Text(contact['email']),
            onTap: () => launchUrl(Uri.parse("mailto:${contact['email']}")),
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: Text(contact['phone']),
            onTap: () => launchUrl(Uri.parse("tel:${contact['phone']}")),
          ),
          ListTile(
            leading: const Icon(Icons.web),
            title: const Text("GitHub"),
            onTap: () => launchUrl(Uri.parse(contact['github'])),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("LinkedIn"),
            onTap: () => launchUrl(Uri.parse(contact['linkedin'])),
          ),
          const ContactForm(),
        ],
      ),
    );
  }
}
