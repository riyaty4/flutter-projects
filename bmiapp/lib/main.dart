import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home:Home(),
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _ageController=TextEditingController();
  final TextEditingController _heightController=TextEditingController();
  final TextEditingController _weightController=TextEditingController();
  double _result = 0.0;
  String bmi = "";
  void Calculate() {
    setState(() {
      int age = int.parse(_ageController.text);
      double weight = double.parse(_weightController.text);
      double height = double.parse(_heightController.text);
      if ((_ageController.toString().isNotEmpty && age > 0) ||
          (_weightController.toString().isNotEmpty && weight > 0) ||
          (_heightController.toString().isNotEmpty && height > 0)) {
        _result = (703 * weight) / pow(height * 12, 2);
      }
      if (_result >= 25.0 && _result < 29.9) {
        bmi = "Overweight";
      } else if (_result >= 18.5 && _result < 25.0) {
        bmi = "Healty";
      } else if (_result >= 29.9) {
        bmi = "Obese";
      } else {
        bmi = "Underweight";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
   
      return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI",
          style: TextStyle(
          fontSize: 26.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Colors.amber,
          
           
        ),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),  
    body: Container(
    alignment: Alignment.topCenter,
    child: ListView(
      padding: EdgeInsets.all(4.0),
      children: <Widget>[
      Container(
        padding: EdgeInsets.all(10.0),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[

            TextField(
              controller: _ageController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Age",
                hintText: "enter age",
                icon: Icon(Icons.person_outline)

              ),


            ),
            TextField(
              controller: _heightController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Height",
                      hintText: "In Feet",
                      icon: Icon(Icons.insert_chart)
                    ),

            ),
            TextField(
                controller: _weightController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Weight",
                      hintText: "In Lbs",
                      icon:Icon(Icons.line_weight)
                    ),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text(
                  "calculate",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold

                   ),

                ),
                color: Colors.amberAccent,
                onPressed: Calculate,
              ),
            )
          ],
        ),
      

      ),
      Center(
        child: Text(
          " Your BMI is ${_result.toStringAsFixed(1)}",
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 20.0, 
            fontWeight: FontWeight.bold


          ),

        )

      ),
      Center(
        child: Text(
          "$bmi",
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: 20.0, 
            fontWeight: FontWeight.bold


          ),

        )

      )
     
      ],
    ),)

    );
  }
}