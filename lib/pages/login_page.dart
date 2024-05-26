import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Nice to see you again',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 32),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email or phone number',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextField(
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
                onPressed: () {
                  // Action for sign in
                },
                child: Text('Sign in'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // updated from primary
                  foregroundColor: Colors.white, // updated from onPrimary
                  minimumSize: Size(double.infinity, 50), // full width
                ),
              ),
              SizedBox(height: 16),
              Text('Or sign in with Google'),
              SizedBox(height: 16),
              ElevatedButton.icon(
                icon: Image.asset('lib/images/google.png', height: 24), // Add your Google icon here
                label: Text('Sign in with Google'),
                onPressed: () {
                  // Action for Google sign in
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // updated from primary
                  foregroundColor: Colors.black, // updated from onPrimary
                  side: BorderSide(color: Colors.grey),
                  minimumSize: Size(double.infinity, 50), // full width
                ),
              ),
              SizedBox(height: 32),
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
    );
  }
}
