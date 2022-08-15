
import 'package:flutter/material.dart';
import 'package:english/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData( ),
      home:const Scaffold(
       body:QuestionWidget(),
      ), 
      );
  }
}

class QuestionWidget extends StatefulWidget {
 const QuestionWidget({Key? key}) : super(key: key);

  @override
  State<QuestionWidget> createState() => QuestionWidgetState();
}

class QuestionWidgetState extends State<QuestionWidget> {
   //Declare 
   late PageController _controller;
   int _questionNumber = 1;
   int _score = 0;
   bool _isLocked = false;
 //Initiate _controller state
   @override
   void initState(){
      super.initState();
      _controller = PageController(initialPage: 0);
   }

  @override
  Widget build(BuildContext context) {
  
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column( 
           crossAxisAlignment: CrossAxisAlignment.end,
           children: [
            const SizedBox(height: 32),
            Text('Questions $_questionNumber/${questions.length}',style: TextStyle(color: Colors.blueGrey,fontSize: 12,fontWeight: FontWeight.w400,fontFamily: 'Padauk'),),
            const Divider(thickness: 1,color: Colors.grey),
            Expanded(
              child:PageView.builder(
                itemCount: questions.length,
                 controller: _controller,    
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index){
                   final _question=questions[index];
                   return buildQuestion(_question);
                }),
              ),
            _isLocked ?  buildElevatedButton() : const SizedBox.shrink(),
            const SizedBox(height: 20),
           ],    
      ), );
  }
    Column buildQuestion(Question question){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 62),
          Text(
            question.text,
            style: const TextStyle(fontSize: 18,color: Color.fromARGB(255, 3, 65, 29),fontWeight: FontWeight.w400,wordSpacing: 6.5,fontFamily:'Padauk'),
          ),
            const SizedBox(height: 32),
            Expanded(
              child: OptionsWidget(
                question:question,
                onClickedOption: (option) {
                  if(question.isLocked){
                      return;
                  }else{
                    setState(() {
                      question.isLocked = true;
                      question.selectecdOption = option;
                    });
                    _isLocked = question.isLocked;
                    if(question.selectecdOption!.isCorrect){
                       _score++;
                    }
                  }
                },
                ),
            ),
        ],
      );
    }
     ElevatedButton buildElevatedButton(){
       return ElevatedButton(
        onPressed: (){
          
          //Result Page
            if(_questionNumber < questions.length){
              _controller.nextPage( 
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeInExpo,
                 );
                   setState(() {
                     _questionNumber++;
                     _isLocked = false;
                   });
            }else{
            Navigator.pushReplacement(context,MaterialPageRoute(
                builder: (context){ 
                  
                 return ResultPage(score:_score);
                }
                ),
              );       
            }
        },
        style: TextButton.styleFrom(
          primary: Color.fromARGB(255, 218, 241, 234),
          padding: EdgeInsets.all(7),
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
          ),
         child: Text( 
                  _questionNumber < questions.length ? 'Next Page' : 'See Result',style: TextStyle(color: Colors.white,fontSize: 12,),),
          );
     }
}

class OptionsWidget extends StatelessWidget {
  //Declare
  final Question question;
  final ValueChanged<Option> onClickedOption;
  const OptionsWidget({
    Key? key,
    required this.question,
    required this.onClickedOption,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
     child: Column(
      children: question.options
            .map((option) => buildOption(context,option))
            .toList(),
     ),
  ); 

  Widget buildOption(BuildContext context, Option option){
    final color = getColorForOption(option,question);
    return GestureDetector(
      onTap: (() => onClickedOption(option)),
      child: Container(
          height: 50,
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(vertical:8),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: color),
          ),
        child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(
                    option.text,
                    style: const TextStyle(color:Color.fromARGB(255, 3, 54, 95),fontSize: 15,fontWeight: FontWeight.w400,fontFamily: 'Padauk'),
                   ),
                  getIconForOption(option, question)
                ],  
        ),
      ),
    );
  }

  Color getColorForOption(Option option,Question question){
    final isSelected = option == question.selectecdOption;
    if (question.isLocked){
      if(isSelected){
         return option.isCorrect ? Colors.green : Colors.red;
       }else if(option.isCorrect){
        return Colors.green;
       }
    }
    return Colors.grey.shade300;
  }   
 
    Widget getIconForOption(Option option,Question question){
       final isSelected = option == question.selectecdOption;
       if(question.isLocked){
        if(isSelected){
          return option.isCorrect
               ? const Icon(Icons.check_circle,color: Colors.green)
               : const Icon(Icons.cancel,color: Colors.red,);
        }else if(option.isCorrect){
           return const Icon(Icons.check_circle,color: Colors.green);
        }
       }
       return const SizedBox.shrink();
    }
  }

 class ResultPage extends StatelessWidget {
  const ResultPage({Key? key,required this.score}) : super(key: key);
  //Declare
  final int score;
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
           theme: ThemeData(primarySwatch: Colors.blueGrey),
           debugShowCheckedModeBanner: false,
           home:Scaffold( 
            appBar:AppBar(
              title:Text('Finished Job',style: TextStyle(fontSize: 18,fontFamily: 'Padauk'),textWidthBasis: TextWidthBasis.longestLine,),
              centerTitle: true,
              ),
           body: Center( 
        //    if(int score<=60){ };      
              child:
                 Row(
                    children: [
                      Text('                    Your Score is  ',style: TextStyle(color:Color.fromARGB(255, 92, 94, 5),fontSize: 20,fontFamily: 'Padauk'),),
                    
                      Text(' $score',style: TextStyle(color:Color.fromARGB(255, 14, 206, 8),fontSize: 20,fontFamily: 'Padauk'),),

                      Text('/${questions.length} ',style: TextStyle(color:Color.fromARGB(255, 87, 6, 141),fontSize: 20,fontFamily: 'Padauk'),),
                
                    ],
                ),
             ),
        ),
     );
  }
}