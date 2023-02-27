import 'dart:html';

import 'package:flutter/material.dart';
import 'package:timetableapp_flutter/pages/group.dart';

import 'academic.dart';
import 'mybatch.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItem = 0;
  var _pagesData = [ MyBatch(),Group(), Academic()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
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
