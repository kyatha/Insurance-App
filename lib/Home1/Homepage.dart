import 'package:flutter/material.dart';

import 'package:insuranceapp/Screens/Insurance/insurance.dart';

import 'package:insuranceapp/Screens/Renew/renew.dart';
import 'package:insuranceapp/Screens/rescue.dart';
import 'package:insuranceapp/Screens/Accident/report.dart';

import 'package:insuranceapp/Screens/companyProfiles.dart';

import 'package:insuranceapp/Screens/Renew/renew.dart';
import 'package:insuranceapp/Screens/rescue.dart';
import 'package:insuranceapp/Screens/Accident/report.dart';
import 'package:insuranceapp/Screens/User Profile.dart';
import 'package:insuranceapp/Screens/companyProfiles.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
          primaryColor: Colors.teal, fontFamily: 'Raleway'),
      home: new ListPage(title: ('Select Service')),
      // home: DetailPage(),
    );
  }
}

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

// replace this function with the code in the examples
Widget _myListView(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.tealAccent,
    appBar: topAppBar,
    body: new Container(
      padding: new EdgeInsets.all(2.0),
  child: new Center(

  child:GridView.count(
  crossAxisCount: 2,

  children: <Widget>[

    Card(
      child: Container(
        padding: new EdgeInsets.all(2.0),
        decoration: BoxDecoration(color: Colors.teal),
        child: new InkWell(
            onTap: () {
              Navigator.push(
                context,
               MaterialPageRoute(builder: (context) => get_insurance()),


              );
            },
            child: Center(child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
//                  Expanded(child: Icon(Icons.attach_money, size: 90.0,
//                      color: Colors.black)),
                  Text("Buy Insurance",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ]
            ),
            )
        ),
      ),
    ),

    Card(
      child: Container(
        decoration: BoxDecoration(color: Colors.teal),
        padding: new EdgeInsets.all(2.0),
        child: new InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => get_renew()),
              );
            },
            child: Center(child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
//                  Expanded(child: Icon(
//                      Icons.autorenew, size: 90.0,
//                   color: Colors.black)),
                  Text("Renew insurance cover",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ]
            ),
            )
        ),
      ),
    ),

    Card(
      child: Container(decoration: BoxDecoration(color: Colors.teal),
        padding: new EdgeInsets.all(2.0),
        child: new InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => get_report()),
              );
            },
            child: Center(child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
//                  Expanded(child: Icon(
//                      Icons.warning, size: 90.0, color: Colors.black)),
                  Text("Report Accident",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ]
            ),
            )
        ),
      ),
    ),

    Card(
      child: Container(decoration: BoxDecoration(color: Colors.teal),
        child: new InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => get_rescue()),
              );
            },
            child: Center(child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
//                  Expanded(child: Icon(Icons.local_hospital, size: 90.0,
//                      color: Colors.black)),
                  Text("Rescue services near me",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ]
            ),
            )
        ),
      ),
    ),
  ],
  ),
  ),
      ),


    bottomNavigationBar: Container(
    height: 55.0,
    child: BottomAppBar(
      color: Colors.teal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home, color: Colors.blue),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.blur_on, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.hotel, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_box, color: Colors.white),
            onPressed: () {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => MyProfile()),
//                );
            },
          )
        ],
      ),
    ),
  ),
  );
}
final topAppBar = AppBar(
  elevation: 1,
  backgroundColor: Colors.teal,
  title: Text('Select Service'),
  centerTitle: true,
  actions: <Widget>[
    IconButton(
      icon: Icon(Icons.list),
      onPressed: () {},
    )
  ],
);




