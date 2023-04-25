import 'package:flutter/material.dart';
import 'package:webtech_flutter_app/screens/reset_password.dart';
import 'package:webtech_flutter_app/screens/signup_screen.dart';
import 'package:webtech_flutter_app/theme.dart';
import 'package:webtech_flutter_app/widgets/signin_form.dart';
import 'package:webtech_flutter_app/widgets/button.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 120,
              ),
              Text(
                'Welcome To Ashesi Corner!',
                textAlign: TextAlign.center,
                style: titleText,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    '...where all campus gist lives',
                    textAlign: TextAlign.center,
                    style: subTitle,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignupScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign up',
                      textAlign: TextAlign.center,
                      style: textButton.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const SigninForm(),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ResetPassword()));
                },
                child: const Text(
                  'Forgot Password?',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromARGB(255, 43, 22, 22),
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    decorationThickness: 1,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Button(
                buttonText: 'Sign in',
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}