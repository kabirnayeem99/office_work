import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/bg.png',
              ),
              Image.asset(
                'assets/images/bg.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
