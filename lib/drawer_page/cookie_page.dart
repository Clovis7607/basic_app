import 'package:flutter/material.dart';

class CookiePage extends StatelessWidget {
  const CookiePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('this is cookie'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          children: [
            Icon(
              Icons.cookie_rounded,
              size: 200,
              color: Colors.brown,
            ),

            Image.asset(
              'images/cookies.jpeg',
            ),
          ],
        ),
      ),
    );
  }
}
