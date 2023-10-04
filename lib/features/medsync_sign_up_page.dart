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
        padding: const EdgeInsets.all(45),
        decoration: const BoxDecoration(
          // Add decoration as needed
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Medicine Library',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
                fontSize: 30,
                color: Color.fromARGB(255, 25, 23, 149),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SearchBar(
                     constraints: BoxConstraints(
                         maxWidth: 250,
                       ),
                    leading: Icon(Icons.search),
                    hintText: 'Search for a medicine',
                    backgroundColor: MaterialStatePropertyAll(
                       Color.fromARGB(255, 255, 255, 255)
                      
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}