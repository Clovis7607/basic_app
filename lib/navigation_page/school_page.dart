import 'package:flutter/material.dart';

class SchoolPage extends StatelessWidget {
  const SchoolPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Image.asset('images/001.jpg'),
            Image.asset('images/002.jpeg'),
            Image.asset('images/003.jpeg'),
            Image.asset('images/004.jpeg'),
            Image.asset('images/005.jpeg'),
          ],
        ),
      ),
    );
  }
}