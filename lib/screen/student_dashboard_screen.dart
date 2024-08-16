import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class StudentDashboard extends StatefulWidget {
  @override
  _StudentDashboardState createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // Add your logic here if you want to change the screen based on the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade500,
        leading: Icon(Icons.menu, color: Colors.white, size: 40), // Icon on the left
        title: Text(
          'Student Dashboard',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ), // Text in the center
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100), // Circular border radius
              child: Container(
                height: 40, // Height of the image
                width: 40,  // Width of the image (same as height to make it a square)
                child: Image.asset('assets/images/student.jpg', fit: BoxFit.cover), // Image
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 200, // Set the height of the carousel slider
                  autoPlay: true,
                  aspectRatio: 16/9,
                  viewportFraction: 0.9,
                ),
                items: [
                  'assets/images/slide1.jpg',
                  'assets/images/slide2.jpg',
                  'assets/images/slide3.png',
                  'assets/images/slide4.png', // Fixed filename
                ].map((imagePath) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 7.0, vertical: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(imagePath),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            Container(
              height: 140,
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Notice: Upcoming exams will start from 25th August. Please prepare accordingly and check your exam routine.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ),
      Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1.5,
                  children: [
                    _buildDashboardItem(Icons.assignment_turned_in, "Attendance"),
                    _buildDashboardItem(Icons.home_work, "Homework"),
                    _buildDashboardItem(Icons.grade, "Result"),
                    _buildDashboardItem(Icons.schedule, "Exam Routine"),
                    _buildDashboardItem(Icons.lightbulb, "Solution"),
                    _buildDashboardItem(Icons.quiz, "Quiz"),
                  ],
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green.shade700,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildDashboardItem(IconData iconData, String label) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData, size: 40, color: Colors.green),
          SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold ,color: Colors.black),
          ),
        ],
      ),
    );
  }
}
