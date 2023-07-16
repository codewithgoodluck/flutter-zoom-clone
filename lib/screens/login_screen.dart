import 'package:flutter/material.dart';
import 'package:zoomclone/resource/auth_login_method.dart';
import 'package:zoomclone/screens/home_screen.dart';

import '../widget/custom_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final AuthMethods _authMethods = AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          'Start or join a meeting',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 38.0),
          child: Image.asset('assets/images/onboarding.jpg'),
        ),
        CustomButton(
          text: "Google Sign In",
          onPressed: () async {
            //do something
            bool res = await _authMethods.signInwithGoogle(context);
            if(res){
              Navigator.pushNamed(context, '/home');
            }
          },
        )
      ]),
    );
  }
}
