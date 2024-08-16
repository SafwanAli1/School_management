import 'package:flutter/material.dart';
import 'package:school_mangement/screen/Onboarding-02.dart';

class OnboardingScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      color: Colors.orangeAccent.shade100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Mark Homework as Completed',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          Container(
              width: 300,
              child: Image(
                  image: AssetImage(
                      'assets/images/Mark-Homework-as-Completed.png'))),
          SizedBox(height: 30),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OnboardingScreen2()),
                );
              },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white, // Button background color
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              textStyle: TextStyle(fontSize: 20),
            ),
            child: Text('Next',
                style: TextStyle(
                    color: Colors.blueAccent.shade700,
                    fontWeight: FontWeight.bold)),)
        ],
      ),
    ));
  }
}
