import 'package:flutter/material.dart';
import 'package:school_mangement/screen/User_Selection_Screen.dart';


class OnboardingScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      color: Colors.blueAccent.shade700,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Student Exam And Report Cards',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white,),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          Container(
              width: 250,
              child: Image(image: AssetImage('assets/images/Student-Exam-And-Report-Cards.png'))),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserSelectionScreen()),
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
