// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:schoolerp/screens/assignments_screen.dart';
import 'package:schoolerp/screens/student_Dashboard_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int __selectedindex = 0;
  List<Widget> list = [
    StudentDashboard(),
    AssignmentScreen(),
    // Text('Assignmetns',
    //     style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Homework',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Pay Fee',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void onTapped(int index) {
    setState(() {
      __selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list.elementAt(__selectedindex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Assignment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Homework',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            // child:Text('hi'),
            label: 'Pay Fee',
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: __selectedindex,
        onTap: onTapped,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
      ),
    );
  }
}
