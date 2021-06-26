import 'package:a_to_z/flutter_flow/flutter_flow_widgets.dart';
import 'package:a_to_z/models/database.dart';
import 'package:firebase_database/firebase_database.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class ContactParentWidget extends StatefulWidget {
  ContactParentWidget({Key key}) : super(key: key);

  @override
  _ContactParentWidgetState createState() => _ContactParentWidgetState();
}

class _ContactParentWidgetState extends State<ContactParentWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final DB = FirebaseDatabase.instance;
  List<dynamic> parentEmail = [Database().ParentsEmails];
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        iconTheme: IconThemeData(color: Color(0xFF030000)),
        automaticallyImplyLeading: true,
        title: Text(
          'Contact Parent',
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
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [
            ListTile(
                title: Text(
              ('$parentEmail'),
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            )),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  final isAvailable = await Database().parentEmailList();
                  if (isAvailable != null) {
                    print(' hey $parentEmail');
                    parentEmail = Database().parentEmailList() as List;
                  }
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
          ],
        ),
      ),
    );
  }
}
