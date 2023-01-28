import 'package:flutter/material.dart';
import 'package:login_page/screens/gradient_button.dart';
import 'package:login_page/screens/login_field.dart';

import 'package:login_page/widgets/social_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            Image.asset('assets/images/signin_balls.png'),
            const Text(
              'Sign-in',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SocialButton(
              onPressed: () {},
              iconPath: 'assets/svg/icons8-google.svg',
              label: 'Continue with Google ',
              horizontalPadding: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            SocialButton(
                onPressed: () {},
                horizontalPadding: 90,
                iconPath: 'assets/svg/icons8-facebook.svg',
                label: 'Continue with Facebook '),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Or',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const LoginField(hintText: 'Email'),
            const SizedBox(
              height: 15,
            ),
            const LoginField(hintText: 'Password'),
            const SizedBox(
              height: 20,
            ),
            const GradientButton(),
          ],
        ),
      )),
    );
  }
}
