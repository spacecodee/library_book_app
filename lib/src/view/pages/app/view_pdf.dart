import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lectura',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Pagina de lectura'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PdfViewerController _pdfViewerController;
  final GlobalKey<SfPdfViewerState> _pdfViewerStateKey = GlobalKey();
  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SfPdfViewer.network(
              'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf',
              controller: _pdfViewerController,
              key: _pdfViewerStateKey),
          appBar: AppBar(
            actions: <Widget>[

              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                },),

              IconButton(
                  onPressed: () {
                    _pdfViewerController.jumpToPage(1);
                  },
                  icon: Icon(
                    Icons.arrow_drop_down_circle,
                    color: Colors.white,
                  )),

              IconButton(
                icon: Icon(Icons.settings,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },),

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

