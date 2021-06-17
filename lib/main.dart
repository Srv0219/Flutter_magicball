import 'dart:math';
import 'package:random_words/random_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
              child: Text(
            'Ask question',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
        body: magicball(),
      ),
    );
  }
}

class magicball extends StatefulWidget {
  const magicball({Key? key}) : super(key: key);

  @override
  _magicballState createState() => _magicballState();
}

// ignore: camel_case_types
class _magicballState extends State<magicball> {
  var change = "hello";
  var disp = "click here";
  List yourList = [
    "Yes",
    "No",
    "Ask Again Later",
    "The Answer Is Yes",
    "I Have No Idea"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Stack(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Image.asset(
                    'images/eight-ball.png',
                  ),
                ),
              ),
            ),
            Positioned(
                child: Center(
              child: Container(
                width: 130,
                height: 130,
                child: Center(
                    child: TextButton(
                  onPressed: () {
                    setState(() {
                      // creates an empty array of length 5
                      // int change = Random().nextInt(yourList.length);
                      // disp = yourList[change];
                      // nouns.take(50).forEach(print);
                    });
                  },
                  child: Text(
                    'nouns.take(50).forEach(print)',
                    style: TextStyle(fontSize: 20.0),
                  ),
                )),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  color: Colors.white,
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
