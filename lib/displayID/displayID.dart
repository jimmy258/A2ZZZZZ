import 'package:firebase_database/firebase_database.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:a_to_z/models/database.dart';

// ignore: camel_case_types
class displayIDWidget extends StatefulWidget {
  displayIDWidget({Key key}) : super(key: key);

  @override
  _displayIDWidgetState createState() => _displayIDWidgetState();
}

// ignore: camel_case_types
class _displayIDWidgetState extends State<displayIDWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final DB = FirebaseDatabase.instance;
  var retrievedID = " ";

  @override
  Widget build(BuildContext context) {
    final ref = DB.reference().child(Database.loggedParentId);
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        iconTheme: IconThemeData(color: Color(0xFF030000)),
        automaticallyImplyLeading: true,
        title: Text(
          'what is my kid ID?',
          style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Poppins',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFF2C3E50),
      body: SafeArea(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 10, 50),
                          child: Image.asset(
                            'assets/images/ballon.png',
                            width: 60,
                            height: 80,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 70, 10, 10),
                          child: Image.asset(
                            'assets/images/ballon.png',
                            width: 60,
                            height: 80,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 0, 50),
                          child: Image.asset(
                            'assets/images/ballon.png',
                            width: 60,
                            height: 80,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 50, 0, 10),
                          child: Image.asset(
                            'assets/images/ballon.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.fill,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Text(
                  'Display kid ID',
                  style: FlutterFlowTheme.title1.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.tertiaryColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF5F5F5),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                      child: Container(
                        width: 200,
                        child: Center(
                          child: Text(retrievedID,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 26,
                                  color: Colors.black)),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                      ref.child("kid/id").once().then((DataSnapshot data) {
                        setState(() {
                          retrievedID = data.value;
                        });
                      });
                    },
                    text: 'Tap here',
                    options: FFButtonOptions(
                      width: 170,
                      height: 60,
                      color: Color(0xFF6E118D),
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 50,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 50, 0, 10),
                          child: Image.asset(
                            'assets/images/ballon.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 0, 50),
                          child: Image.asset(
                            'assets/images/ballon.png',
                            width: 60,
                            height: 80,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 70, 10, 10),
                          child: Image.asset(
                            'assets/images/ballon.png',
                            width: 60,
                            height: 80,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 10, 50),
                          child: Image.asset(
                            'assets/images/ballon.png',
                            width: 60,
                            height: 80,
                            fit: BoxFit.fill,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
