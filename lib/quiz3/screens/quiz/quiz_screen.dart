import 'package:flutter/material.dart';
//import 'package:get/get.dart';
//import 'package:a_to_z/quiz3/controllers/question_controller.dart';
import 'components/body.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //QuestionController3 _controller = Get.put(QuestionController3());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          // Fluttter show the back button automatically
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: []),
      body: Body(),
    );
  }
}
