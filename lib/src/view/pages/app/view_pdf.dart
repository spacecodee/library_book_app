import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ViewPdf extends StatefulWidget {
  ViewPdf({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ViewPdfState createState() => _ViewPdfState();
}

class _ViewPdfState extends State<ViewPdf> {
  late PdfViewerController _pdfViewerController;
  final GlobalKey<SfPdfViewerState> _pdfViewerStateKey = GlobalKey();

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

//
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SfPdfViewer.network(
          'http://www.ataun.eus/BIBLIOTECAGRATUITA/Cl%C3%A1sicos%20en%20Espa%C3%B1ol/Charles%20Perrault/Caperucita%20%20Roja.pdf',
          controller: _pdfViewerController,
          key: _pdfViewerStateKey),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {},
            );
          },
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                _pdfViewerController.jumpToPage(1);
              },
              icon: Icon(
                Icons.arrow_drop_down_circle,
                color: Colors.white,
              )),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
              onPressed: () {
                _pdfViewerController.zoomLevel = 1.25;
              },
              icon: Icon(
                Icons.zoom_in,
                color: Colors.white,
              ))
        ],
      ),
    ));
  }
}
//
