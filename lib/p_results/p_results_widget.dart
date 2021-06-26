import 'package:a_to_z/models/database.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:a_to_z/flutter_flow/flutter_flow_widgets.dart';
import 'package:firebase_database/firebase_database.dart';

class PResultsWidget extends StatefulWidget {
  PResultsWidget({Key key}) : super(key: key);

  @override
  _PResultsWidgetState createState() => _PResultsWidgetState();
}

class _PResultsWidgetState extends State<PResultsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final DB = FirebaseDatabase.instance;
  int Score1 = 0;
  int Score2 = 0;
  int Score3 = 0;
  int Score4 = 0;
  int Score5 = 0;
  var score1R = "Unavailable";
  var score2R = "Unavailable";
  var score3R = "Unavailable";
  var score4R = "Unavailable";
  var score5R = "Unavailable";

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
          'Kid\'s results',
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
        child: ListView(
          padding: EdgeInsets.all(8),
          scrollDirection: Axis.vertical,
          children: [
            ListTile(
                title: Text(
              score1R,
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            )),
            ListTile(
                title: Text(
              score2R,
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            )),
            ListTile(
                title: Text(
              score3R,
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            )),
            ListTile(
                title: Text(
              score4R,
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            )),
            ListTile(
                title: Text(
              score5R,
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            )),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 100, 30, 0),
              child: FFButtonWidget(
                onPressed: () {
                  ref.child("kid/score").once().then((DataSnapshot data) {
                    setState(() {
                      Score1 = data.value;
                      score1R = ('Quiz 1 result is $Score1');
                    });
                  });
                  ref.child("kid/score2").once().then((DataSnapshot data) {
                    setState(() {
                      Score2 = data.value;
                      score2R = ('Quiz 2 result is $Score2');
                    });
                  });
                  ref.child("kid/score3").once().then((DataSnapshot data) {
                    setState(() {
                      Score3 = data.value;
                      score3R = ('Quiz 3 result is $Score3');
                    });
                  });
                  ref.child("kid/score4").once().then((DataSnapshot data) {
                    setState(() {
                      Score4 = data.value;
                      score4R = ('Quiz 4 result is $Score4');
                    });
                  });
                  ref.child("kid/score5").once().then((DataSnapshot data) {
                    setState(() {
                      Score5 = data.value;
                      score5R = ('Quiz 5 result is $Score5');
                    });
                  });
                },
                text: 'Get results',
                options: FFButtonOptions(
                  width: 120,
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
          ],
        ),
      ),
    );
  }
}
