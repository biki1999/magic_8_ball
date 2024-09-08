import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:BallPage(),
    )
  );

class BallPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything',style: TextStyle(color: Colors.white),),

      ),
      body: Ball(),
    );
  }
}
class Ball extends StatefulWidget{
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: InkWell(
          onTap: (){
            setState(() {

            });
          },
          child: Image.asset('assets/images/ball${ballNumber = Random().nextInt(5)+1}.png')
        )
      ),
    );
  }
}