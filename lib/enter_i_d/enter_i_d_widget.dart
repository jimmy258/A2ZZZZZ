import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../kids/kids_widget.dart';
import 'package:flutter/material.dart';
import 'package:a_to_z/models/informationViewer.dart';
import 'package:a_to_z/models/database.dart';

class EnterIDWidget extends StatefulWidget {
  EnterIDWidget({Key key}) : super(key: key);

  @override
  _EnterIDWidgetState createState() => _EnterIDWidgetState();
}

class _EnterIDWidgetState extends State<EnterIDWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        iconTheme: IconThemeData(color: Color(0xFF030000)),
        automaticallyImplyLeading: true,
        title: Text(
          'Kid login',
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
                  'Login',
                  style: FlutterFlowTheme.title1.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.tertiaryColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                        child: TextFormField(
                          controller: textController,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: '\"Enter your kid ID\"',
                            hintStyle: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.tertiaryColor,
                                width: 0,
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0),
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.tertiaryColor,
                                width: 0,
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0),
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      print('searching for ${textController.text}');
                      final isAvailable =
                          await Database().loginKid(textController.text);
                      if (isAvailable) {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => KidsWidget(),
                          ),
                        );
                      } else {
                        InformationViewer.showErrorToast(
                            "user not found", context);
                      }
                    },
                    text: 'Next',
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
