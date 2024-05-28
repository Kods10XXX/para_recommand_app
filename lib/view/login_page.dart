import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:para_recommand_app/user_auth/firebase_auth_services.dart';

import 'homepage/HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final FirebaseAuthService firebaseAuthService = FirebaseAuthService();
    return Scaffold(

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                LottieBuilder.asset(
                    "assets/lottie/Animation - 1716739797493.json"),
                const Text(
                  'Nice to see you again',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 32),
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
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (bool? value) {}),
                        Text('Remember me'),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        // Action for forgot password
                      },
                      child: Text('Forgot password?'),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () async {
                    final message = await firebaseAuthService.signInWithEmailAndPassword(email.text,pass.text);
                    if (message!.contains('Success')) {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) =>  HomePage()));
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(message),
                      ),
                    );
                  },
                  child: Text('Sign in'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // updated from primary
                    foregroundColor: Colors.white, // updated from onPrimary
                    minimumSize: Size(double.infinity, 50), // full width
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        // Action for sign up
                      },
                      child: Text('Sign up now'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
