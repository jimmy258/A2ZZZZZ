import 'package:a_to_z/parent/parent_widget.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../ktips2/ktips2_widget.dart';
import 'package:flutter/material.dart';

class Ktips1Widget extends StatefulWidget {
  Ktips1Widget({Key key}) : super(key: key);

  @override
  _Ktips1WidgetState createState() => _Ktips1WidgetState();
}

class _Ktips1WidgetState extends State<Ktips1Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        iconTheme: IconThemeData(color: Color(0xFF030000)),
        automaticallyImplyLeading: true,
        title: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: Alignment(0, 0),
              child: Text(
                'Tips for Parenting a Child\nwith ASD',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Atma',
                  color: Colors.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Color(0xFF2C3E50),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: Alignment(-0.9, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ParentWidget(),
                      ),
                    );
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/Arrow.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Text(
                '1. Focus on the positive. Just like anyone else, children with autism spectrum disorder often respond well to positive reinforcement. That means when you praise them for the behaviors they’re doing well, it will make them (and you) feel good.',
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Atma',
                  color: FlutterFlowTheme.tertiaryColor,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  'assets/images/1.png',
                  width: 200,
                  height: 125,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text(
                'Be specific, so that they know exactly what you liked about their behavior. Find ways to reward them, either with extra playtime or a small prize like a sticker.\nAlso, as you would with anyone -- on the spectrum or not -- prize your child for who they are. As a parent, loving your child for who they are is key.',
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Atma',
                  color: FlutterFlowTheme.tertiaryColor,
                  fontSize: 18,
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      'assets/images/2.png',
                      width: 200,
                      height: 125,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 125, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ktips2Widget(),
                        ),
                      );
                    },
                    text: 'Next',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: Color(0x8E3474E0),
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Atma',
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 50,
                      ),
                      borderRadius: 50,
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
