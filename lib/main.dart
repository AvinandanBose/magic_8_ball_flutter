import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
  const AskMeAnything(),
);

class AskMeAnything extends StatelessWidget {
  const AskMeAnything({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int ballnumber =1 ;
  void update_sate(){
    setState(() {
      ballnumber = Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text('Ask Me Anything'),
        centerTitle: true,
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {
            update_sate();
          },
          child: Image.asset('images/ball$ballnumber.png'),
        ),
      ),
    );
  }
}
