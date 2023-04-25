import 'package:flutter/material.dart';
import 'package:webtech_flutter_app/screens/signin_screen.dart';
import 'package:webtech_flutter_app/theme.dart';
import 'package:webtech_flutter_app/widgets/button.dart';
import 'package:webtech_flutter_app/widgets/reset_form.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 150,
            ),
            Text(
              'Reset Password',
              style: titleText,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Enter email address',
              style: subTitle.copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            const ResetForm(),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SigninScreen(),
                      ));
                },
                child: const Button(buttonText: 'Reset Password')),
          ],
        ),
      ),
    );
  }
}
