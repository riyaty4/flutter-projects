import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'homeapp.dart';
void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
    
  ));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState()
  {
    super.initState();
    startTimer();
  }
  startTimer() async{
    var duration=Duration(seconds: 4);
    return Timer(duration, route);
  }
  route()
  {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context)=> Homeapp()
    
    
    ));
  }
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 14,
      title: new Text('Welcome to Mybook',
        style: new TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
          fontFamily: "Caveat"
        ),
      ),
      image: new Image.asset('asset/logo.png'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 150.0,
      onClick: ()=>print("Flutter Egypt"),
      loaderColor: Colors.blueAccent,
    );
  }
}


