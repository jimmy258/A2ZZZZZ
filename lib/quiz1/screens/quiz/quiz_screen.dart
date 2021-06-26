import 'package:flutter/material.dart';
//import 'package:get/get.dart';
//import 'package:a_to_z/quiz1/controllers/question_controller.dart';
import 'components/body.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //QuestionController1 _controller = Get.put(QuestionController1());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent, elevation: 0, actions: []),
      body: Body(),
    );
  }
}
