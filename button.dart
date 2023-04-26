import 'package:flutter/material.dart';
import 'package:webtech_flutter_app/theme.dart';

class Button extends StatelessWidget {
  final String buttonText;

  const Button({Key? key, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.05,
      width: 500.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: const Color(0xFF722F37)),
      child: Text(
        buttonText,
        style: textButton.copyWith(color: kWhiteColor),
      ),
    );
  }
}
