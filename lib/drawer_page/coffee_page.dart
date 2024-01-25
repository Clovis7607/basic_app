import 'package:flutter/material.dart';

class CoffeePage extends StatelessWidget {
  const CoffeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('this is coffee'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          children: [
            Icon(
              Icons.coffee_rounded,
              size: 200,
              color: Colors.brown,
            ),

            Image.asset(
              'images/coffee.jpg'
            )
          ],
        ),
      ),
    );
  }
}
