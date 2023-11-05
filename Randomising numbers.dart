import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),//created stateless widget with name BallPage
      ),
    );


class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold
      (appBar: AppBar(title: Text('Ask me Anything'),
      backgroundColor: Colors.blueAccent.shade700,),
        backgroundColor: Colors.blue,
    body: Ball(),
    );
  }
}


class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}
class _BallState extends State<Ball> {

  @override
  int ballNumber =0;
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
         onPressed: (){
           var ballNumber = Random();
           for(var i=0;i<=5;i++){
             print(ballNumber.nextInt(5));
           }

           //Random().nextInt(5);

           //print("I got clicked");
       },
      child: Image.asset('images/ball1.png'),
     ),
    );

  }

}