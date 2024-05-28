import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:para_recommand_app/user_auth/firebase_auth_services.dart';

import 'homepage/HomePage.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final FirebaseAuthService firebaseAuthService = FirebaseAuthService();
    return Scaffold(
      backgroundColor: Color(0xffe3c9df),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/signup.gif",
                  height: 200,
                ),
              ),
              const Text(
                'Create your account',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32),
              TextField(
                controller: userName,
                decoration: InputDecoration(
                  labelText: 'User name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: email,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: pass,
                decoration: InputDecoration(
                  labelText: 'Enter password',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () async {
                  await firebaseAuthService
                      .signUpWithEmailAndPassword(email.text, pass.text)
                      .then(
                        (value) => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        ),
                      );
                },
                child: Text('Sign up'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50), // full width
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
