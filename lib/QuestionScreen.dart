
import 'package:first_app/answer_button.dart';
import 'package:first_app/data/questions.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  final currentQuestion = questions[0];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestion.text, style: TextStyle(
            color: Colors.red,
          ),),
          SizedBox(height: 30,),
          ...currentQuestion.answers.map((answer) {
            return AnswerButton(answerText: answer, onTap: () {},);
          })
        ],
      ),
    );
  }
}