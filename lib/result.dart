import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:githubquiz/Questionans.dart';
import 'package:githubquiz/home.dart';
import 'package:githubquiz/questionbank.dart';
class resultt extends StatefulWidget {
  final dynamic marks;
  final dynamic totalmarks;
  const resultt({super.key, required this.marks,required this.totalmarks});

  @override
  State<resultt> createState() => _resulttState();
}

class _resulttState extends State<resultt> {
  List<String> imageurl=[
    'assets/happy.jpeg',
    'assets/average.jpg',
    'assets/sad.jpg'];
  var tmarks;
  var smarks;
  var percentage;
  String imagecall(){
    if(percentage>90){
      return imageurl[0];
    }
    else if(percentage>50){
      return imageurl[1];
    }
    else{
      return imageurl[2];}
  }

    @override
  void initState() {
    // TODO: implement initState
    tmarks=widget.totalmarks;
     smarks=widget.marks;
     percentage=(smarks/tmarks)*100;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${percentage.toStringAsFixed(2)}%',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.pink),),
            SizedBox(height: 50,),
            Text('You got $smarks from $tmarks',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.pink),),
            SizedBox(height: 50,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(180),
              ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(180),child: Image.asset(imagecall(),height: 200,width: 200,))),
            SizedBox(height: 20,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),onPressed: (){
              setState(() {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>homee()));
              });
            }, child: Text('Restart Quiz',style: TextStyle(color: Colors.white),)),
            SizedBox(height: 10,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                onPressed: (){
              SystemNavigator.pop();
            }, child: Text('Exit Quiz',style: TextStyle(color: Colors.white),)),

          ],
        ),
      ),
    );
  }
}
