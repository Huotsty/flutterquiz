
import 'quiz.dart';
class Answer {
  final Question question;
  final String questionAnswer;

  Answer({required this.question, required this.questionAnswer});
  
  bool get isCorrect => question.goodAnswer == questionAnswer;

}
class Submission{
  final Map<Question, Answer> _answers = {};
  
  int getScore(){
    return _answers.values.where((answer) => answer.isCorrect).length;
  }
  Answer? getAnswerFor(Question question){
    return _answers[question];
  }
  void addAnswer(Question question, String answer){
    _answers[question] = Answer(question: question, questionAnswer: answer);
  }
  void removeAnswers(){
    _answers.clear();
  }
}