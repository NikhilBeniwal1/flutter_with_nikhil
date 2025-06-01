import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();


  bool showSuccess = false;

  Future<void> submitForm() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      isSubmitting = true;
      showSuccess = false;
    });

    await FirebaseFirestore.instance.collection('contacts').add({
      'name': nameController.text.trim(),
      'email': emailController.text.trim(),
      'message': messageController.text.trim(),
      'timestamp': FieldValue.serverTimestamp(),
    });

    setState(() {
      isSubmitting = false;
      showSuccess = true;
    });

    nameController.clear();
    emailController.clear();
    messageController.clear();


    if (showSuccess)
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:  Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          children: const [
            Icon(Icons.check_circle, color: Colors.green),
            SizedBox(width: 10),
            Text('Message sent successfully!'),
          ],
        ),
      )))
     ;

  }


  bool isSubmitting = false;


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: [
        TextFormField(
          controller: nameController,
          decoration: const InputDecoration(labelText: 'Your Name'),
          validator: (value) =>
          value!.isEmpty ? 'Please enter your name' : null,
        ),
        TextFormField(
          controller: emailController,
          decoration: const InputDecoration(labelText: 'Your Email'),
          validator: (value) =>
          !value!.contains('@') ? 'Enter a valid email' : null,
        ),
        TextFormField(
          controller: messageController,
          decoration: const InputDecoration(labelText: 'Your Message'),
          maxLines: 4,
          validator: (value) =>
          value!.isEmpty ? 'Please enter a message' : null,
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: isSubmitting ? null : submitForm,
          child: isSubmitting
              ? const CircularProgressIndicator()
              : const Text('Send Message'),
        ),
      ]),
    );
  }




}
