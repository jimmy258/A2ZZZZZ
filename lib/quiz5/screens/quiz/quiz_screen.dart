import 'package:flutter/material.dart';
//import 'package:get/get.dart';
//import 'package:a_to_z/quiz5/controllers/question_controller.dart';

import 'components/body.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //QuestionController5 _controller = Get.put(QuestionController5());
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
