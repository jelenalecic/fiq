import 'package:flutter/material.dart';

enum QuestionType { general, dart, ui, stateManagement }

class Question {
  Question(this.question, this.answer, this.type);

  final String question;
  final Widget answer;
  final QuestionType type;
}
