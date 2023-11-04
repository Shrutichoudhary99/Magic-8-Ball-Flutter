//Making it interactive  by adding a Textbutton which gives an output on clicking on it




import 'package:flutter/material.dart';

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
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
         onPressed: (){
          print("I got clicked");
       },
      child: Image.asset('images/ball1.png'),
     ),
    );

  }

}
