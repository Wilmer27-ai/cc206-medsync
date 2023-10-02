import 'package:flutter/material.dart';

void main() {
  runApp(const MedsyncSignUpPage());
}

class MedsyncSignUpPage extends StatefulWidget {
  const MedsyncSignUpPage({Key? key}) : super(key: key);

  @override
  State<MedsyncSignUpPage> createState() => _MedsyncSignUpPageState();
}

class _MedsyncSignUpPageState extends State<MedsyncSignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          // Add decoration as needed
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Medsync',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 35,
                color: Color.fromARGB(255, 25, 23, 149),
              ),
            ),
            Row(
              children: [
                // Add your row content here
              ],
            ),
          ],
        ),
      ),
    );
  }
}