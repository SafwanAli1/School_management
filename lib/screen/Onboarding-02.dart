import 'package:flutter/material.dart';
import 'package:school_mangement/screen/Onboarding-03.dart';

class OnboardingScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      color: Colors.blueAccent.shade700,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Rectify Your Attendance',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 30),
          Container(
              width: 300,
              child: Image(image: AssetImage('assets/images/Rectify-Your-Attendance.png'))),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OnboardingScreen3()),
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
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    ));
  }
}
