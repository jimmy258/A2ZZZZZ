import 'package:a_to_z/parent/parent_widget.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../ptips6/ptips6_widget.dart';
import 'package:flutter/material.dart';

class Ptips5Widget extends StatefulWidget {
  Ptips5Widget({Key key}) : super(key: key);

  @override
  _Ptips5WidgetState createState() => _Ptips5WidgetState();
}

class _Ptips5WidgetState extends State<Ptips5Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.07),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.tertiaryColor,
          iconTheme: IconThemeData(color: Color(0xFF030000)),
          automaticallyImplyLeading: true,
          flexibleSpace: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(1, 65, 1, 1),
                child: Text(
                  'Our home is safety proofed.',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Poppins',
                    color: Color(0xFFF9A825),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          actions: [],
          elevation: 2,
        ),
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
                'You’re probably familiar with baby proofing a house. But while most families can take down the safety gates and doorknob locks once the child ages, families with children on the Autism Spectrum often have these items and more protecting their child from their home’s inherent dangers. This is because many children on the Autism Spectrum are prone to behaviors that can bring about self injury.',
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Atma',
                  color: FlutterFlowTheme.tertiaryColor,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/images/13.png',
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Ptips6Widget(),
                    ),
                  );
                },
                text: 'Next',
                options: FFButtonOptions(
                  width: 130,
                  height: 40,
                  color: FlutterFlowTheme.primaryColor,
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
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
        ),
      ),
    );
  }
}
