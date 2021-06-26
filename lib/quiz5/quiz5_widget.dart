import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:a_to_z/quiz5/screens/quiz/quiz_screen.dart';

class Quiz5Widget extends StatefulWidget {
  Quiz5Widget({Key key}) : super(key: key);

  @override
  _Quiz5WidgetState createState() => _Quiz5WidgetState();
}

class _Quiz5WidgetState extends State<Quiz5Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        iconTheme: IconThemeData(color: Color(0xFF030000)),
        automaticallyImplyLeading: true,
        title: Align(
          alignment: Alignment(-0.2, 0),
          child: Text(
            'Quiz 5',
            style: FlutterFlowTheme.title1.override(
              fontFamily: 'Poppins',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: Quiz5(),
    );
  }
}

class Quiz5 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: QuizScreen(),
    );
  }
}
