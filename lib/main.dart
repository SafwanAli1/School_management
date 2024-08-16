import 'package:flutter/material.dart';
import 'package:school_mangement/screen/student_dashboard_screen.dart';
import 'package:school_mangement/screen/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF212325),
      ),
      home: StudentDashboard(),
    );
  }

}
