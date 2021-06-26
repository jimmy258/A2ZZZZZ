import 'package:a_to_z/parent/parent_widget.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../ktips5/ktips5_widget.dart';
import 'package:flutter/material.dart';

class Ktips4Widget extends StatefulWidget {
  Ktips4Widget({Key key}) : super(key: key);

  @override
  _Ktips4WidgetState createState() => _Ktips4WidgetState();
}

class _Ktips4WidgetState extends State<Ktips4Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        iconTheme: IconThemeData(color: Color(0xFF030000)),
        automaticallyImplyLeading: true,
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
                '5. Take your child along for everyday activities. If your child’s behavior is unpredictable, you may feel like it’s easier not to expose them to certain situations. But when you take them on everyday errands like grocery shopping or a post office run, it may help them get them used to the world around them.',
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Atma',
                  color: FlutterFlowTheme.tertiaryColor,
                  fontSize: 18,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                'assets/images/6.png',
                width: 125,
                height: 125,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text(
                '6. Look into respite care. This is when another caregiver looks after your child for a period of time to give you a short break. You’ll need it, especially if your child has intense needs due to ASD. This can give you a chance to do things that restore your own health and that you enjoy, so that you come back home ready to help.',
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Atma',
                  color: FlutterFlowTheme.tertiaryColor,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  'assets/images/7.png',
                  width: 125,
                  height: 125,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment(0.85, 0),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 25),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Ktips5Widget(),
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
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 50,
                            ),
                            borderRadius: 50,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
