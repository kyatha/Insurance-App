import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:insuranceapp/Logic/plans.dart';
import 'package:insuranceapp/Utilities/cars.dart';
import 'package:convert/convert.dart';

class PremiumCalculator extends StatefulWidget {
  PremiumCalculator() : super();
  final String title = 'Premium Calculator';
  @override
  _PremiumCalculatorState createState() => _PremiumCalculatorState();
}

class _PremiumCalculatorState extends State<PremiumCalculator> {
  bool loading =true;
  static List<Car> cars = new List<Car>();
  void getCars () async{
    try{
      final response = await http.get("http://www.carqueryapi.com/js/carquery.0.3.4.js");
      if(response.statusCode ==200){
        cars = loadCars(response.body);
        setState(() {
          loading: false;
        });

      }
      else{
        print('Error');
      }
    }catch(e){
      print('Error');
    }
  }
  final _formKey = GlobalKey<FormState>();
  String model, name, email;
  int phone, age;
  DateTime yearOfMan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Premium Calculator'
        ),
        backgroundColor: Color(0xFFD8992B),
      ),
      backgroundColor:Color (0xFFD8992B),
      body: SingleChildScrollView(
        child: Form(
            key: _formKey,
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(16),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: 'Make & Model:',
                        hintText: 'Type and Select',
                        labelStyle: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        )
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Make / Model cannot be empty';
                      }
                      return null;
                    },
                    onSaved: (String val) {
                      model = val;
                    },
                  ),
                ),
                new SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: 'Year of Manufacture',
                        hintText: 'YYYY',
                        labelStyle: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        )
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Year of manufacture cannot be empty';
                      }
                      return null;
                    },
                  ),
                ),
                new SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: 'Your name:',
                        hintText: 'Full legal name',
                        labelStyle: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        )
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Surely you must have a name';
                      }
                      return null;
                    },
                    onSaved: (String val) {
                      name = val;
                    },
                  ),
                ),
                new SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.all(24),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Your primary email',
                        labelStyle: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        )
                    ),
                    onSaved: (String val) {
                      email = val;
                    },
                  ),

                ),
                new SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.all(24),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        labelText: 'Phone number',
                        hintText: '07xx',
                        labelStyle: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        )
                    ),
                  ),
                ),
                new SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.all(24),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: 'Age bracket',
                        labelStyle: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        )
                    ),
                  ),
                  ),
                new SizedBox(
                  height: 10.0,
                ),
                FlatButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Plans()),
                    );
                    print('Calculating premium');
                    calculatePrem();
                  },
                  child: Text('Calculate premium', style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),),
                  padding: EdgeInsets.only(bottom: 10, top: 10, right:24, left:24),
                )

              ],
            )
          ),
        ),

      ),

    );
  }

  calculatePrem() {
    print('Calculating premium');
  }

  List<Car> loadCars(String body) {
  print('Loading cars, apparentl');}
}

