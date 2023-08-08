import 'package:flutter/material.dart';


class SignInPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 4,),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'USER LOGIN',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                      obscureText: true,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  // Handle sign-in button pressed
                  String email = emailController.text;
                  String password = passwordController.text;
                  Navigator.pushNamed(context, '/mcq-maker');
                  // TODO: Implement sign-in logic
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                child: Text('Sign In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
