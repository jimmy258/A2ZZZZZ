import 'package:a_to_z/parent/parent_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../ptips2/ptips2_widget.dart';
import 'package:flutter/material.dart';

class Ptips1Widget extends StatefulWidget {
  Ptips1Widget({Key key}) : super(key: key);

  @override
  _Ptips1WidgetState createState() => _Ptips1WidgetState();
}

class _Ptips1WidgetState extends State<Ptips1Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.tertiaryColor,
          iconTheme: IconThemeData(color: Color(0xFF030000)),
          automaticallyImplyLeading: true,
          flexibleSpace: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 40, 0, 0),
                child: Text(
                  '10 Things Parents of children on the \nAutism Spectrum Want You to Know',
                  textAlign: TextAlign.center,
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
                'It is estimated that one in 68 children are now diagnosed with an Autism Spectrum disorder, and yet, this diagnosis remains as misunderstood as ever. We simply do not live in a society that is accommodating or even accepting of those who are not “neurotypical.” Fortunately, parents of autistic children are wonderful at communicating who their children are and why. Below are 30 things those parents of children on the Autism Spectrum want you to know.\n',
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Atma',
                  color: FlutterFlowTheme.tertiaryColor,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/images/9.png',
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Ptips2Widget(),
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
