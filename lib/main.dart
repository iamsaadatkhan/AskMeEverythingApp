import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Ask Me Everything'),
        ),
        body: AskmeEverythingPage(),
      ),
    ));

class AskmeEverythingPage extends StatefulWidget {
  @override
  _AskmeEverythingPageState createState() => _AskmeEverythingPageState();
}

class _AskmeEverythingPageState extends State<AskmeEverythingPage> {
  int questionasked =1;
  void randomanswergenerator(){
    setState(() {
      questionasked = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          children: <Widget>[
            Expanded(child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: FlatButton(
                  onPressed: (){
                    randomanswergenerator();
                  },
                  child: Image.asset("images/ans$questionasked.png")),
            ))


          ],
        ),
    );
  }
}
