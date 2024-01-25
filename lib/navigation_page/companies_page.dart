import 'package:flutter/material.dart';

class CompaniesPage extends StatelessWidget {
  const CompaniesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Image.asset('images/apple.jpeg'),
            Image.asset('images/microsoft.jpeg'),
            Image.asset('images/google.png'),
            Image.asset('images/tsmc.jpg'),
            Image.asset('images/samsung.jpeg'),
          ],
        ),
      ),
    );
  }
}