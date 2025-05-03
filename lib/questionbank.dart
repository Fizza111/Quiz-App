
import 'Questionans.dart';

class questionbank{
 int count=0;
  List<questionans> qesans=[
   questionans('AI is a field of science focused on creating machines capable of performing tasks that typically require human intelligence', true),
    questionans('Machine learning is a subset of AI that focuses on algorithms that learn from data', true),
    questionans('AI is only useful for computer games and robots', false),
    questionans('Natural Language Processing (NLP) is a branch of AI that deals with human language', true),
    questionans('Deep learning is a type of machine learning that uses artificial neural networks with many layers', true),
    questionans(' AI systems always make perfect predictions and decisions', false),
    questionans('Computer vision is a branch of AI that enables machines to "see" and interpret images', true),
    questionans('AI is a replacement for human intelligence and will lead to a future where humans are no longer needed', true),
    questionans('AI can be used to detect and prevent fraud', true),
    questionans('AI is not able to learn from experience', false),
    questionans('Expert systems use knowledge bases and inference engines to solve problems', true),
    questionans('Robotics is a field that combines AI with mechanical engineering to create robots', true),
    questionans('AI is only useful for scientific research and academic institutions.', true),
    questionans('AI systems are only capable of reasoning and problem-solving', false),
    questionans('AI systems can never make mistakes.', false),
    questionans('AI can be used to improve medical diagnosis and treatment', true),
    questionans('AI is a threat to human society and will eventually lead to a dystopian future', false),
    questionans(' AI can be used to analyze and understand large datasets.', true),
    questionans('AI is only useful for scientific research and academic institutions.', true),
   questionans('AI can be used to detect and prevent fraud', true),

  ];

  String? getquestion(){

   return qesans[count].question;
  }

  bool? getanswer(){
   return qesans[count].ans;
  }

  void nextquestion(){

   count=count+1;
  }

 bool? finishquiz(){
   if(count>qesans.length-1){
    return true;
   }
   else{
    return false;
   }
 }


}