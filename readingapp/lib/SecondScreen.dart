import 'package:flutter/material.dart';

 
 class SecondScreen extends StatefulWidget {
   @override
   _SecondScreenState createState() => _SecondScreenState();
 }
 
 class _SecondScreenState extends State<SecondScreen> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(

         appBar: AppBar(
        title: Text(
          "If You Could See Me Now",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,

          ),
          ),
          backgroundColor: Colors.blue[100],
      ),
      
           body: Container(
        alignment: Alignment.topCenter,
        child: ListView(
          padding: EdgeInsets.all(5.0),
          children: <Widget>[
            Image.asset(
              "asset/writer.jpg",
              height: 200.0,
              width: 200.0,
            ),
             Padding(
            padding: EdgeInsets.all(5.0),
            ),
            Text('Author: Cecelia Ahern',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold, 
              color: Colors.black,
              ),
            ),
                    Padding(
            padding: EdgeInsets.all(5.0),
            ),
            Text('Publisher: HarperCollins',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.normal, 
              color: Colors.black,
            //  fontFamily: "Caveat"
              ),

            ),
            Padding(
            padding: EdgeInsets.all(5.0),
            ),
            Text('Originally published: November 2005',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.normal, 
              color: Colors.black,
             // fontFamily: "Caveat"
              ),

            ),
             Padding(
            padding: EdgeInsets.all(5.0),
            ),
             Text('Genres: Novel,Romance Novel,Psychological Fiction',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.normal, 
              color: Colors.black,
             // fontFamily: "Caveat"
              ),

            ),
             Padding(
            padding: EdgeInsets.all(5.0),
            ),
            Text('About Author: Cecelia Ahern is an Irish novelist known for her works like PS, I Love You, Where Rainbows End and If You Could See Me Now. Born in Dublin, Ahern is now published in nearly fifty countries, and has sold over 25 million copies of her novels worldwide. Two of her books have been adapted as major motion films',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.normal, 
              color: Colors.black,
             // fontFamily: "Caveat"
              ),

            ),
          ], 
       
     ),
           ),
           );
   }
 }