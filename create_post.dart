import 'package:flutter/material.dart';

class CreatePost extends StatelessWidget {
  CreatePost({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final posttextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Email'),
            const SizedBox(height: 8.0),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your email',
              ),
            ),
            const SizedBox(height: 16.0),
            const Text('Type Post'),
            const SizedBox(height: 8.0),
            TextField(
              controller: posttextController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your text',
              ),
            ),
          ],
        ),
      ),
    );
  }
}