import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_mangement/screen/Login_screen.dart';

class UserSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo at the top
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Image.asset(
                  'assets/images/logo-school.png', // Replace with your logo's path
                  height: 150,
                ),
              ),

              SizedBox(height: 50),

              // "Choose your option" text
              Text(
                'Choose your option',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 60),

              // Row with the three options
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Student option
                  OptionButton(
                    icon: Icons.school,
                    label: 'Student',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                  ),

                  // Teacher option
                  OptionButton(
                    icon: Icons.person_outline,
                    label: 'Teacher',
                    onTap: () {
                      // Navigate to Teacher screen
                    },
                  ),
                ],
              ),

              SizedBox(height: 40),

              // Guest option centered
              OptionButton(
                icon: Icons.person,
                label: 'Guest',
                onTap: () {
                  // Navigate to Guest screen
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OptionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  OptionButton({required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blueAccent.shade700,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 70,
            ),
          ),
          SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(fontSize: 22, color: Colors.black,fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
