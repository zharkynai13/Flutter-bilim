import 'package:quiz_app_hw7/model.dart';

class UseQuiz {
  int index = 0;
  List <QuizModel> suurojoop = [
    QuizModel(suuro: "Кыргызстанда  7 область барбы?", joop: true),
    QuizModel(suuro: "Ысык-Кол кышынды тонобу?", joop: false),
    QuizModel(suuro: "Кыргызстан тропикабы?", joop: false),
    QuizModel(suuro: "Садыр ават президентпи?", joop: true),
    QuizModel(suuro: "Бамбук бак бы?", joop: false),
  ];
  String suuroAllu() {
    return suurojoop[index].suuro;
  }
  bool joopAllu() {
    return suurojoop[index].joop;
  }
 
  void nextQuestion() {
    if(index <= suurojoop.length) {
      index++;
    }
  }

  bool isFinished() {
    if(suurojoop[index] == suurojoop.last) {
      return true;
    } else {
      return false;
    }
  }

  void indexZero() {
    index = 0;
  }
}