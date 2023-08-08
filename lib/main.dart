import 'package:flutter/material.dart';
import 'SignUpPage.dart';
import 'SignInPage.dart';
import 'McqMaker.dart';
void main() {
  runApp(MyApp());
}
const Color appBarColor = Color(0xFF738276); //
const Color bodyColor = Color(0xFF6fe1b2); //

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/signup': (context) => SignUpPage(),
        '/signin': (context) => SignInPage(),
        '/mcq-maker': (context) => MCQMaker(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text('MCQ-MAKER',style: TextStyle(fontSize: 20.0),),
        centerTitle: true,
      ),
      backgroundColor:bodyColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: Text('Sign Up'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signin');
              },
              child: Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
