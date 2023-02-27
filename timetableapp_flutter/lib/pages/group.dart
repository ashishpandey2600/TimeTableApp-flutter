import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class Group extends StatefulWidget {
  const Group({super.key});

  @override
  State<Group> createState() => _GroupState();
}

class _GroupState extends State<Group> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("B11"),
      ),

      body: SfPdfViewer.asset('assets/TB.pdf',
      enableDocumentLinkAnnotation: true,
      enableDoubleTapZooming: true,
      enableHyperlinkNavigation: true,
      enableTextSelection: true,
      ),
    );
  }
}
