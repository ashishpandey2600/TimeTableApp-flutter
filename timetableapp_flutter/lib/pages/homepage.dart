import 'dart:html';

import 'package:flutter/material.dart';
import 'package:timetableapp_flutter/pages/group.dart';

import 'academic.dart';
import 'courseoutcome.dart';
import 'mybatch.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItem = 0;
  var _pagesData = [MyBatch(), Group(), Academic()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('6th Semester'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(
                  child: CircleAvatar(),
                  decoration: BoxDecoration(color: Colors.blue)),
            ),
            ListTile(
              title: Text("Course Outcome"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CourseOutcome()));
              },
            ),
            ListTile(
              title: Text("Acadamic Calender "),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Academic()));
              },
            ),
            ListTile(
              title: Text("BY time table"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyBatch()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: _pagesData[_selectedItem],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'B[11]',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.density_large),
            label: 'B[Y]',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_view_day_rounded),
            label: 'Academic Calender',
          ),
        ],
        currentIndex: _selectedItem,
        onTap: (setValue) {
          setState(() {
            _selectedItem = setValue;
          });
        },
      ),
    );
  }
}
