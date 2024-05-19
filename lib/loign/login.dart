import 'package:flutter/material.dart';
import 'package:radiocity/loign/addSection.dart';
import 'package:radiocity/loign/divider.dart';
import 'package:radiocity/loign/phoneNumberLogin.dart';
import 'package:radiocity/loign/socialMediaLogin.dart';
import 'package:radiocity/loign/termsAndCondition.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              VideoSection(),
              PhoneNumberSection(),
              OrDivider(),
              SignInButton(
                logo: FontAwesomeIcons.google,
                logoColor: Colors.red,
                text: 'Google',
                onPressed: () {
                  // Handle Google sign in
                },
              ),
              SizedBox(height: 10),
              SignInButton(
                logo: Icons.apple,
                logoColor: Colors.white,
                text: 'Sing with Apple',
                onPressed: () {
                  // Handle Apple sign in
                },
              ),
              SizedBox(height: 10),
              TermsText(),
              SizedBox(height: 10),
            ]),
      ),
    );
  }
}
