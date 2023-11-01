import 'package:flutter/material.dart';
import 'package:login_signup/pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'home_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context , snapshot) {
          //if user is logged in
          if (snapshot.hasData) {
            return HomePage();
          } //if statement
          // user is logged out
          else {
            return LoginPage();
          } //else statement
        },
      ),
    );
  }
}
