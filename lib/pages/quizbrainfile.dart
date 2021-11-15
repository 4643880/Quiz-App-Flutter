import 'package:flutter_learning_with_angela/pages/myquestion.dart';


class AppBrain {
  int questionCounter = 0;

    List<MyQuestionClass> questionBank = [
    MyQuestionClass("Is Mr. Nadeem Zaidi HOD of CIT Department?",  true),
    MyQuestionClass("Hafeez Jallandri Composed the verses of Pakistan national Anthem?", true),
    MyQuestionClass("Are 37 letters in there Urdu alphabets?", true),
    MyQuestionClass("The Word 'Urdu' means 'Believers'?", false),
    MyQuestionClass( "PPI is not situated in Lahore?", true),   
    MyQuestionClass("The Word 'Urdu' means 'Lahore'?", false),
  ];

  void nextQuestionFunc(){
    if(questionCounter <= questionBank.length -1 ){
       questionCounter++;
    }
  }

  String getQuestionTextFunc(){
    return questionBank[questionCounter].questionText;
  }

  bool getQuestionAnsFunc(){
    return questionBank[questionCounter].questionsAns;
  }

  bool isFinishedFunc(){
    if(questionCounter >= questionBank.length -1){
      return true;
    }
    else{
      return false;
    }
  }

  void resetFunc(){
    questionCounter = 0;    
  }


}

