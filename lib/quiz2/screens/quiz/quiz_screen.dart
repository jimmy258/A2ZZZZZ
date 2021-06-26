import 'package:flutter/material.dart';
//import 'package:get/get.dart';
//import 'package:a_to_z/quiz2/controllers/question_controller.dart';

import 'components/body.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //QuestionController2 _controller = Get.put(QuestionController2());
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
