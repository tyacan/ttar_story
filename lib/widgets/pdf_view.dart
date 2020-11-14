// ByMusthyr ; call is as: PDFView() | PDFView('your pdf file path from assets')
import 'package:flutter/material.dart';
import 'package:native_pdf_view/native_pdf_view.dart';

class PDFView extends StatefulWidget {
  const PDFView({
    Key key,
    String pdfPath,
  })  : _pdfPath = pdfPath,
        super(key: key);

  final String _pdfPath;

  @override
  PDFViewState createState() => PDFViewState(_pdfPath);
}

class PDFViewState extends State<PDFView> {
  int _actualPageNumber = 1;
  int _allPagesCount = 0;

  PdfController _pdfController;
  String _pdfPath;

  PDFViewState(
    this._pdfPath,
  );

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset(this._pdfPath ?? 'assets/ttar_story.pdf'),
    );
    super.initState();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  void jumpToPage(int pageNumber) {
    _pdfController.jumpToPage(pageNumber);
  }

void animateToPage(int pageNumber) {
  _pdfController.animateToPage(pageNumber, duration: Duration(milliseconds: 250), curve: Curves.ease);
}
void previousPage() {
  _pdfController.previousPage(duration: Duration(milliseconds: 250), curve: Curves.easeOut);
}
void nextPage() {
  _pdfController.nextPage(duration: Duration(milliseconds: 250), curve: Curves.easeOut);
}

String currentPage() => _pdfController.page.toString();


  final _pageKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return PdfView(
      key: _pageKey,
      scrollDirection: Axis.vertical,
      documentLoader: Center(child: CircularProgressIndicator()),
      pageLoader: Center(child: CircularProgressIndicator()),
      controller: _pdfController,
      onDocumentLoaded: (document) {
        setState(() {
          this._actualPageNumber = 1;
          this._allPagesCount = document.pagesCount;
        });
      },
      onPageChanged: (page) {
        setState(() {
          this._actualPageNumber = page;
        });
      },
    );
  }
}
