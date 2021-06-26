import 'package:a_to_z/parent/parent_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

class Ptips11Widget extends StatefulWidget {
  Ptips11Widget({Key key}) : super(key: key);

  @override
  _Ptips11WidgetState createState() => _Ptips11WidgetState();
}

class _Ptips11WidgetState extends State<Ptips11Widget> {
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 40, 1, 0),
                child: Text(
                  'No, I don’t just need to discipline\n my child more.',
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
              padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
              child: Text(
                'Meltdowns are not tantrums. They are not the result of a lack of discipline on the part of the parent. Children on the Autism Spectrum have sensory issues. One child may be a sensory avoider, while another is a sensory seeker. And kids with sensory issues do not respond well to physical punishment. Spanking, time out, and yelling are not usually effective tools of discipline for a child with autism. Rather, parents of children on the Autism Spectrum rely on routine and repeated exposure to teach their autistic children rules and boundaries.',
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Atma',
                  color: FlutterFlowTheme.tertiaryColor,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/images/19.png',
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ParentWidget(),
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
