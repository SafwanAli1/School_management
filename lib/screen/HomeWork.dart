import 'package:flutter/material.dart';

class HomeworkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade500,
        title: Text(
          'Homework',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'This is the Homework Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
