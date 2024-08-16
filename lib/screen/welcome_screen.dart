import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_mangement/screen/Onboarding-01.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      color: Colors.blueAccent.shade700,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome To Our School Management',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          Image(image: AssetImage('assets/images/logo-school.png')),
          SizedBox(height: 30),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OnboardingScreen1()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Button background color
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: TextStyle(fontSize: 20),
              ),
            child: Text('Next',
                style: TextStyle(
                    color: Colors.blue.shade700,
                    fontWeight: FontWeight.bold)),),
        ],
      ),
    ));
  }
}
