import 'package:flutter/material.dart';
import 'package:webtech_flutter_app/theme.dart';

class ResetForm extends StatelessWidget {
  const ResetForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 500.0),
      child: TextFormField(
        decoration: const InputDecoration(
            hintText: 'Email',
            hintStyle: TextStyle(color: kTextFieldColor),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kPrimaryColor))),
      ),
    );
  }
}
