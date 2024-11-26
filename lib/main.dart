import 'package:flutter/material.dart';
import 'model/quiz.dart';

import 'quiz_app.dart';

void main() {
  final quiz = Quiz(
    title: "Sample Quiz",
    questions: [
      const Question(
        title: "What is Flutter?",
        possibleAnswers: ["Framework", "Library", "Language", "IDE"],
        goodAnswer: "Framework",
      ),
      const Question(
        title: "Who developed Dart?",
        possibleAnswers: ["Google", "Facebook", "Apple", "Microsoft"],
        goodAnswer: "Google",
      ),
    ],
  );

  runApp(MaterialApp(
    home: QuizApp(quiz: quiz),
  ));
}
