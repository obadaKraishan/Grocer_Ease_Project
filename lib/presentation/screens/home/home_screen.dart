import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GrocerEase Home'),
      ),
      body: Center(
        child: Text('Welcome to GrocerEase!'),
      ),
    );
  }
}
