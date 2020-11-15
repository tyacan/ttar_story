// ByMuathye;

import './../../../bootstrap/loader.dart';

Widget profileView() {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.fromLTRB(30, 50, 30, 30),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.black54,
                Color.fromRGBO(0, 41, 102, 1),
              ],
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(
                reduisBoxSize,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  //todo: open twitter link
                },
                child: Container(
                  height: 50,
                  width: 50,
                  child: Icon(
                    FontAwesomeIcons.twitter,
                    size: iconSize,
                    // color: Colors.black54,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  //todo: open github link for my account
                },
                child: Container(
                  height: 50,
                  width: 50,
                  child: Icon(
                    FontAwesomeIcons.github,
                    size: iconSize,
                    // color: Colors.black54,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  //todo: open facebook link for my account
                },
                child: Container(
                  height: 50,
                  width: 50,
                  child: Icon(
                    FontAwesomeIcons.facebook,
                    size: iconSize,
                    // color: Colors.black54,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              
              // Text(
              //   '@muathye',
              //   style: GoogleFonts.mcLaren(
              //       fontStyle: FontStyle.normal,
              //       fontSize: 18,
              //       color: whiteColor),
              // ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(
          0,
          0,
          0,
          50,
        ),
        child: Stack(
          children: <Widget>[
            CircleAvatar(
              radius: 70,
              child: ClipOval(
                child: Image.asset(
                  profileImage,
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Positioned(
            //   bottom: 1,
            //   right: 1,
            //   child: Container(
            //     height: 40,
            //     width: 40,
            //     child: Icon(
            //       Icons.add_a_photo,
            //       color: Colors.white,
            //     ),
            //     decoration: BoxDecoration(
            //       color: Colors.deepOrange,
            //       borderRadius: BorderRadius.all(
            //         Radius.circular(20),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      Expanded(
          child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.black54,
              Color.fromRGBO(0, 41, 102, 1),
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Container(
                height: 40,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'الاسم',
                                style: TextStyle(color: Colors.white70),
                              ),
                              Text(
                                ' : ',
                                style: TextStyle(color: Colors.white70),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'معاذ السوادي',
                                style: TextStyle(color: Colors.white70),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(
                    width: 1.0,
                    color: Colors.white70,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Container(
                height: 40,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'الإيميل',
                                style: TextStyle(color: Colors.white70),
                              ),
                              Text(
                                ' : ',
                                style: TextStyle(color: Colors.white70),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'muath.ye@gmail.com',
                                style: TextStyle(color: Colors.white70),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(
                    width: 1.0,
                    color: Colors.white70,
                  ),
                ),
              ),
            ),

            // Expanded(
            //   child: Align(
            //     alignment: Alignment.bottomCenter,
            //     child: Container(
            //       height: 30,
            //       width: 130,
            //       child: Align(
            //         child: Text(
            //           'Save',
            //           style: TextStyle(color: Colors.white70, fontSize: 20),
            //         ),
            //       ),
            //       decoration: BoxDecoration(
            //           color: Colors.deepOrange,
            //           borderRadius: BorderRadius.only(
            //             topLeft: Radius.circular(30),
            //             topRight: Radius.circular(30),
            //           )),
            //     ),
            //   ),
            // ),
          ],
        ),
      ))
    ],
  );
}
