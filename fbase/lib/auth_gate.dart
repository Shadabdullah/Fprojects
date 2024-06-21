import 'package:fbase/home_screen.dart';
import 'package:fbase/sign_in_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          print('The data which is coming in snapshot ${snapshot.data}');
          return SignInScreen();
        }
        return const HomeScreen();
      },
    );
  }
}
