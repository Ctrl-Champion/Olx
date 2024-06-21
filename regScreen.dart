import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olxapp/Signup_auth.dart';
import 'package:sign_in_button/sign_in_button.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SignInButton(
              Buttons.google,
              text:('Continue with google'),
              onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => SignUpScreen()
                ),);
              },
          ),

          SignInButton(
            Buttons.facebook,
            text:('Continue with Facebook'),
            onPressed: (){},
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('OR',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Login with Email',
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }
}
