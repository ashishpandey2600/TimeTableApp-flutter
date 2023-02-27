import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:timetableapp_flutter/pages/group.dart';
import 'package:photo_view/photo_view.dart';
class MyBatch extends StatefulWidget {
  const MyBatch({super.key});

  @override
  State<MyBatch> createState() => _MyBatchState();
}

class _MyBatchState extends State<MyBatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child:PhotoView(imageProvider: AssetImage('assets/B11.jpg'),
      ),

    
      ),


    );
  }
}
