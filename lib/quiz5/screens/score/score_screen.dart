import 'package:a_to_z/models/database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:a_to_z/quiz5/constants.dart';
import 'package:a_to_z/quiz5/controllers/question_controller.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController5 _qnController = Get.put(QuestionController5());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: kSecondaryColor),
              ),
              Spacer(),
              Text(
                "${_qnController.numOfCorrectAns * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: kSecondaryColor),
              ),
              Spacer(flex: 2),
              Padding(
                padding: EdgeInsets.all(64),
                child: TextButton(
                    child: Text(
                      'Tap right here to send your score!',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.deepPurpleAccent),
                    onPressed: () {
                      _qnController.questionNumber.value = 0;
                      Database().updateKidScore5(Database.loggedKidId,
                          _qnController.numOfCorrectAns * 10);
                    }),
              ),
              Spacer(flex: 2),
            ],
          )
        ],
      ),
    );
  }
}
