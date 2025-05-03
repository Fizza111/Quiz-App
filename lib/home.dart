import 'package:flutter/material.dart';
// import 'package:Quiz App/questionbank.dart';
import 'questionbank.dart';
import 'package:flutter/material.dart';
import 'result.dart';

class homee extends StatefulWidget {
  const homee({super.key});

  @override
  State<homee> createState() => _homeeState();
}

class _homeeState extends State<homee> {
  int marks=0;
  int qnumber=1;
  Icon? icon;
  int totalmarks=0;
  bool? userattempt=false;
  bool buttonsdisabled=false;
  questionbank QB=questionbank();
  void buttondisabledtrue(){
    buttonsdisabled=true;
  }
  void userresponse(bool response){
    if(response==QB.getanswer()){
      marks=marks+5;
      userattempt=true;
      buttondisabledtrue();
      icon=Icon(Icons.check,size: 40,color: Colors.green,);
      // QB.nextquestion();
      // QB.getquestion();
    }
    else{
      icon=Icon(Icons.cancel,size: 40,color: Colors.red,);
      buttondisabledtrue();

      userattempt=true;

      }

    }



  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Center(child: Text('$marks')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Container(
                      child: Center(child: Text('Q.$qnumber',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.pink),)),
                    ),
                    Container(
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink,
                      ),

                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(QB.getquestion()!,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                        ))),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),

                  onPressed: buttonsdisabled ? null:(){
                setState(() {
                  userresponse(true);
                  buttonsdisabled=true;
                });
              }, child: Text('True',style: TextStyle(color:Colors.white ),)),
              SizedBox(height: 10,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: buttonsdisabled ? null:(){
                setState(() {
                  userresponse(false);
                  buttonsdisabled=true;
                });
              }, child: Text('False',style: TextStyle(color: Colors.white),)),
              Container(
                child: icon,
              ),
              SizedBox(height: 50,),
              IconButton(onPressed: (){
                setState(() {
                  if(QB.finishquiz()==true){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>resultt(marks: marks,totalmarks: totalmarks)));
                  }else{
                  if(userattempt==true){
                    QB.nextquestion();
                  QB.getquestion();

                  totalmarks=(qnumber+1)*5;
                  qnumber=qnumber+1;
                  userattempt=false;
                  buttonsdisabled=false;}
                } ;
              });},
    icon: Icon(Icons.navigate_next_sharp),style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.pink),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),)


            ],

          ),
        ),
      );

  }
}
