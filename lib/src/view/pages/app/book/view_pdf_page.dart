import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ViewPdfPage extends StatefulWidget {
  final String pdf;

  const ViewPdfPage({
    Key? key,
    @PathParam('pdf') this.pdf =
        'http://www.ataun.eus/BIBLIOTECAGRATUITA/Cl%C3%A1sicos%20en%20Espa%C3%B1ol/Charles%20Perrault/Caperucita%20%20Roja.pdf',
  }) : super(key: key);

  @override
  State<ViewPdfPage> createState() => _ViewPdfPageState();
}

class _ViewPdfPageState extends State<ViewPdfPage> {
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
        appBar: AppBar(
          backgroundColor: SCColors.freeColor,
          leading: Builder(
            builder: (_) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_ios_new),
                color: SCColors.accent,
                onPressed: () {
                  context.popRoute().then((value) {
                    if (value) {
                      _pdfViewerController.dispose();
                    }
                  });
                },
              );
            },
          ),
          actions: [
            IconButton(
              onPressed: () {
                _pdfViewerController.jumpToPage(1);
              },
              icon: const Icon(
                Icons.arrow_drop_down_circle,
                color: SCColors.accent,
              ),
            ),
            IconButton(
              onPressed: () {
                _pdfViewerController.zoomLevel += 1;
              },
              icon: const Icon(
                Icons.zoom_in,
                color: SCColors.accent,
              ),
            ),
            IconButton(
              onPressed: () {
                _pdfViewerController.zoomLevel -= 1;
              },
              icon: const Icon(
                Icons.zoom_out,
                color: SCColors.accent,
              ),
            )
          ],
        ),
        body: SfPdfViewer.network(
          widget.pdf,
          controller: _pdfViewerController,
          key: _pdfViewerStateKey,
        ),
      ),
    );
  }
}
//
