import 'package:flutter/material.dart';
import 'package:webtech_flutter_app/screens/signin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Create Profile Page',
      debugShowCheckedModeBanner: false,
      home: SigninScreen(),
    );
 }
}