import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf_viewer_plugin/pdf_viewer_plugin.dart';


class PdfViewer extends StatefulWidget {
  final String path;
  PdfViewer(this.path);
  @override
  _PdfViewerState createState() => _PdfViewerState();
}

class _PdfViewerState extends State<PdfViewer> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pdf Viewer'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            if (widget.path != null)
              Expanded(
                child: Container(
                 // height: ,
                  child: PdfView(
                    //gestureNavigationEnabled: true,
                    path: widget.path,

                  ),
                ),
              )
            else
              Text("Pdf is not Loaded"),
          ],
        ),
      ),
    );
  }
}
