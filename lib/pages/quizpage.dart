import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter_learning_with_angela/pages/quizbrainfile.dart';

class QuizAppPage extends StatefulWidget {
  const QuizAppPage({Key? key}) : super(key: key); 

  @override
  _QuizAppPageState createState() => _QuizAppPageState();
}

class _QuizAppPageState extends State<QuizAppPage> {

  // It is adding the icons 
  List<Widget> scoreKeeperList = [
    // Examples 
    // const Icon(Icons.check, color: Colors.green,),
    // const Icon(Icons.close, color: Colors.red,),    
  ];

  // Without Encapsulation Starts Here
  // List<String> questionsList = [
  //   "Is Mr. Nadeem Zaidi HOD of CIT Department?",
  //   "Hafeez Jallandri Composed the verses of Pakistan national Anthem?",
  //   "Are 37 letters in there Urdu alphabets?",
  //   "The Word 'Urdu' means 'Believers'?",
  //   "PPI is not situated in Lahore?"    
  // ];
  // List<bool> answersList = [true, true, true, false, false];
  // int questionCounter = 0;  
  // Without Encapsulation Ends Here


  // MyQuestionClass obj1 = MyQuestionClass(questionText: "Is Mr. Nadeem Zaidi HOD of CIT Department?", questionsAns: true);

  AppBrain obj = AppBrain();  

  void checkingAnsFunc(bool userAns){
    setState(() {
      if(obj.isFinishedFunc() == true){
        obj.resetFunc();
        scoreKeeperList = [];
        
        Alert(
                context: context,
                title: "Finished!",
                desc: "You have reached the end of Quiz."
                ).show();          
        }
        else{
          bool correctAns = obj.getQuestionAnsFunc();
          if(correctAns == userAns){
            scoreKeeperList.add(
              const Icon(Icons.check, color: Colors.green,),
          );
                                  
          }
          else{
            scoreKeeperList.add(
              const Icon(Icons.close, color: Colors.red,),);
          }
          obj.nextQuestionFunc(); 
        }
      

    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 32, right: 32, left: 32, bottom: 5),
        child: Column(
          children: [
             Expanded(          
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    child: Text(
                      obj.getQuestionTextFunc(),

                      // Without Encapsulation Starts Here
                        // questionsList[questionCounter],
                      // Without Encapsulation Ends Here
                      textAlign: TextAlign.justify,  
                      style:  const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            // const SizedBox(
            //   height: 50,
            // ),
            SizedBox(
              height: 200,
              child: Column(
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      // backgroundColor: Colors.white,
                      fixedSize: const Size(250, 60),
                      primary: Colors.orange,
                      side: const BorderSide(color: Colors.orange),
                    ),
                    onPressed: () {                      
                        checkingAnsFunc(true); 
                        
                        // Without Encapsulation Starts Here
                          // setState(() {
                          //   bool correctAns = answersList[questionCounter];                  
                          //   if(correctAns == true){
                          //     scoreKeeperList.add(
                          //       const Icon(Icons.check, color: Colors.green,),
                          //   );
                          //   questionCounter++;                          
                          //   }
                          // });
                        // Without Encapsulation Ends Here
                     
                    },
                    child: const Text(
                      "True",
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      // backgroundColor: Colors.white,
                      fixedSize: const Size(250, 60),
                      primary: Colors.red,
                      side: const BorderSide(color: Colors.red),
                    ),
                    onPressed: () {                     
                       checkingAnsFunc(false);    
                      // Without Encapsulation Starts Here
                        // setState(() {
                        //   bool wrongAns = answersList[questionCounter];                  
                        //   if(wrongAns == true){
                        //     scoreKeeperList.add(
                        //       const Icon(Icons.close, color: Colors.red,),
                        //   );
                        //   questionCounter++;                          
                        //   }
                        // });  
                      // Without Encapsulation Ends Here        
                    },
                    child: const Text(
                      "False",
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,                      
                  ),
                  const Divider(thickness: 2, color: Colors.amber),                    
                  Row(
                    children: scoreKeeperList,                
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// You can lead a cow down stairs but not up stairs    false
// Approximately  one quarter of human bones are in the feet  true
// A slug's blood is green   true
