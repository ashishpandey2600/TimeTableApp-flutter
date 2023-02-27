import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class CourseOutcome extends StatefulWidget {
  const CourseOutcome({super.key});

  @override
  State<CourseOutcome> createState() => _CourseOutcomeState();
}

class _CourseOutcomeState extends State<CourseOutcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfPdfViewer.asset('assets/CD.pdf'),

    );
  }
}
