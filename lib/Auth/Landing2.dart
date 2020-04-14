import 'package:flutter/material.dart';

import 'LogIn.dart';
class Landing2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFFBC044), Color(0xFFD8992B)])),
          padding: EdgeInsets.only(left: 15.0, right: 15.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 75.0),
              SizedBox(height: 60.0),
              Text(
                'Welcome to EasyFind!',
                style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.white,
                    fontFamily: 'Cabin',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text(
                'We want to make it easy for you to buy insurance!',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height: 40.0),
              Image.asset('assets/buy.jpg', fit: BoxFit.cover, height: 400.0),
              Container(
                height: 0.5,
                color: Colors.white,
              ),
              SizedBox(height: 10.0),
              Text(
                'You can buy different types of insurance covers from varied vendors',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'See available covers',
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  IconButton(
                    icon: Icon(Icons.arrow_forward, color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                  )
                ],
              )
            ],
          ),
        ));
  }
}