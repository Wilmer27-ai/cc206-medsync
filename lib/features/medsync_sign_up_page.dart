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
      body: SingleChildScrollView(
        child: Container(
        constraints: const BoxConstraints(
          maxWidth: 500, // Set the maximum width for the container
        ),
        padding: const EdgeInsets.all(45),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Medicine Library',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
                fontSize: 30,
                color: Color.fromARGB(255, 25, 23, 149),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: SearchBar(
                      constraints: const BoxConstraints(
                        minHeight: 56.0,
                        minWidth: 500.0,
                      ),
                      hintText: 'Search for a diseases, remedies, etc...',
                      backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 221, 219, 219)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      // Add functionality for the search button
                      // For example, trigger search here
                    },
                    splashRadius: 24.0,
                    iconSize: 24.0,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40.0),
            GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
            shrinkWrap: true,
            children: const [
            BoxButton(assetName: 'lib/assets/1.png', size: 100.0),
            BoxButton(assetName: 'lib/assets/2.png', size: 100.0),
            BoxButton(assetName: 'lib/assets/3.png', size: 100.0),
            BoxButton(assetName: 'lib/assets/4.png', size: 100.0),
            BoxButton(assetName: 'lib/assets/5.png', size: 100.0),
            BoxButton(assetName: 'lib/assets/6.png', size: 100.0),
  ],
),
          ],
        ),
      ),
      ),
    );
    
  }
}

class SearchBar extends StatelessWidget {
  final BoxConstraints constraints;
  final String hintText;
  final MaterialStateProperty<Color> backgroundColor;
  final RoundedRectangleBorder shape; // Added shape property

  const SearchBar({
    Key? key,
    required this.constraints,
    required this.hintText,
    required this.backgroundColor,
    required this.shape,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: constraints,
      decoration: ShapeDecoration(
        color: backgroundColor.resolve({MaterialState.hovered}),
        shape: shape,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BoxButton extends StatelessWidget {
  final String assetName; // Use a variable to store the asset name
  final double size;

  const BoxButton({
    Key? key,
    required this.assetName,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add your button tap functionality here
      },
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: const Color.fromARGB(255, 217, 215, 215), // Set the background color as needed
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            assetName, // Remove the 'assets/' prefix
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}