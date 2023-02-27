import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class Academic extends StatefulWidget {
  const Academic({super.key});

  @override
  State<Academic> createState() => _AcademicState();
}

class _AcademicState extends State<Academic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:SfPdfViewer.asset('assets/AC.pdf',
      enableDoubleTapZooming: true,
      enableTextSelection: true,
      enableHyperlinkNavigation: true,),
      // SafeArea(child: SingleChildScrollView(child: SfPdfViewer.asset('assets/AC.pdf'),),) 
      
    );
  }
}
