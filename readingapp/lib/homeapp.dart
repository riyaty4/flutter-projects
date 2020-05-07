import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'MainScreen.dart';
import 'SecondScreen.dart';
import 'dart:async' show future;
import 'package:flutter/services.dart' show rootBundle;

class Homeapp extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<Homeapp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView(
          padding: EdgeInsets.all(5.0),
          children: <Widget>[

            SizedBox(
              
              width: 200.0,
              height: 400.0,
               child: Card(

                 child: Image.asset(
                  "asset/book.jpg",

                 )
               ), 

             

            ),
           SizedBox(
             width: 200.0,
             height: 75.0,
             child: Card(
              child: ListTile(
                title: Text(
                 "If You Could See Me Now    ",
                 style: TextStyle(
                   fontSize: 18.0,
                   fontWeight: FontWeight.bold,
                   color: Colors.black,
                   

                 ),
                 
               

                ),
                subtitle: Text(
                 "Enchanting and unexpected YOU",
                 style: TextStyle(
                   fontSize: 14.0,
                   fontWeight: FontWeight.normal,
                   color: Colors.black,
                   fontFamily: "Caveat",

                 ), 
               ),
               trailing: Column(
                 children: <Widget>[

               RatingBar(
               
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 13.0,
                  
                  itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                    
                  ), 
                           onRatingUpdate: (rating) {
                   print(rating);
          },
         
              ),
                 Text(
                     "Psychological",
                     style: TextStyle(
                       fontSize: 10.0,
                       fontWeight: FontWeight.normal,
                       color: Colors.black,
                     ),
                   ), 
           ], ),
              ),

                        ),
             


           ),

           
         
           Card(
             child: Text(
              "Tender, magical and captivating – a story of family, friends, and the unlikeliest of romances from the No. 1 bestselling author, Cecelia Ahern. What if love was right there in front of you – you just couldn't see it? Elizabeth Egan is too busy for friends. As a reluctant mother to her sister Saoirse's young son Luke and with her own business to run, every precious moment is made to count. But with Saoirse crashing in and out of their lives, leaving both her sister and her son reeling, Luke and Elizabeth are desperately in need of some magic. Enter Ivan. Wild, spontaneous and always looking for adventure, in no time at all Ivan has changed Elizabeth in ways she could never have imagined. But is Ivan too good to be true? Has Elizabeth opened her heart only to risk it being broken again?"
             ,style: TextStyle(
               fontSize: 20.0,
               color: Colors.black38,
               fontWeight: FontWeight.bold,
               fontFamily: "Caveat",
             ),
             ),

           ),

           Row (
           children: <Widget>
           [
             Padding(
                          padding: EdgeInsets.all(30.0),
                          
                          child: RaisedButton(
                            
                            child:Text(
                              'Read Me',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: "Caveat",
                                color: Colors.black87,

                              ),
                            ),
                            
                            color:Colors.blue[100],
                            elevation: 10.0,
                            shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(80.0),
                              
                            ),
                            onPressed : (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(

                                  builder: (context) =>ReadAssetFile(),
                               ) ); 




                            }
                          )
                          ),
                  //Padding(padding: EdgeInsets.all(5.0)),
                           Padding(
                          padding: EdgeInsets.all(30.0),
                          child: RaisedButton(
                            
                            child:Text(
                              'More info',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black87,
                                fontFamily: "Caveat",

                              ),
                            ),
                            
                            color:Colors.blue[100],
                            elevation: 10.0,
                            shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(50.0),
                              
                            ),
                            onPressed : (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(

                                  builder: (context) =>SecondScreen(),
                               ) ); 




                            }
                          )
                          ),
           ],
           ),
          ],



        ),
        
    
        
      ),
    );
  }
}