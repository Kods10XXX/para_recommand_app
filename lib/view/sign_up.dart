import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homepage/HomePage.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

              const TextField(
                decoration: InputDecoration(
                  labelText: 'User name',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Enter password',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                },
                child: Text('Sign in'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // updated from primary
                  foregroundColor: Colors.white, // updated from onPrimary
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
