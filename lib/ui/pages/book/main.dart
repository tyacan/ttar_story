import './../../../bootstrap/loader.dart';

class Book extends StatefulWidget {
  const Book({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
  // Future<SharedPreferences> myPrefs = SharedPreferences.getInstance();
  // Future<int> current;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      drawer: profileView(),
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          PDFView(key: key),
          Positioned(
            top: 0,
            child: SafeArea(
              child: Container(
                // width: MediaQuery.of(context).size.width,
                // color: whiteColor,
                child: Row(
                  children: <Widget>[
                    PagesIndex(),
                    // ! todo: add or remove fav page numbers
                    // FavoriveToggle(),
                    // ! todo: add share page as image
                    // ShareCurrentPage(),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: SafeArea(
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: whiteColor,
                child: Row(
                  children: <Widget>[
                    // TODO: store current page number foreach jump to page event
                    JumpToLastPage(),
                    JumpToNextPage(),
                    JumpToPreviousPage(),
                    JumpToFirstPage(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
