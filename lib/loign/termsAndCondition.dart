import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(color: Colors.white, fontSize: 14),
        children: [
          TextSpan(text: 'By continuing, you accept our '),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyle(
                color: Colors.red, decoration: TextDecoration.underline),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Handle Privacy Policy tap
              },
          ),
          TextSpan(text: ' & '),
          TextSpan(
            text: 'TC',
            style: TextStyle(
                color: Colors.red, decoration: TextDecoration.underline),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Handle TC tap
              },
          ),
        ],
      ),
    );
  }
}
