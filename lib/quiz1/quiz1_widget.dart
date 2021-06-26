import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:a_to_z/quiz1/screens/quiz/quiz_screen.dart';
import 'package:a_to_z/quiz1/controllers/question_controller.dart';

class Quiz1Widget extends StatefulWidget {
  Quiz1Widget({Key key}) : super(key: key);

  @override
  _Quiz1WidgetState createState() => _Quiz1WidgetState();
}

class _Quiz1WidgetState extends State<Quiz1Widget> {
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
            'Quiz 1',
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
      body: Quiz1(),
    );
  }
}

class Quiz1 extends StatelessWidget {
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
