import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final IconData logo;
  final Color logoColor;
  final String text;
  final VoidCallback onPressed;

  const SignInButton({
    required this.logo,
    required this.logoColor,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          minimumSize: Size(double.infinity, 60),
          side: BorderSide(color: Colors.grey, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  logo,
                  color: logoColor,
                  size: 30,
                ),
                SizedBox(width: 20),
                Text(
                  text,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
