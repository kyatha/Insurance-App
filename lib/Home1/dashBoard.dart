import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insuranceapp/Screens/coverTypes.dart';
import 'package:insuranceapp/Screens/renew.dart';
import 'package:insuranceapp/Screens/rescue.dart';
import 'package:insuranceapp/Screens/report.dart';
import 'package:insuranceapp/Screens/User Profile.dart';
import 'package:insuranceapp/Home1/gridDashboard.dart';


class Dashboard extends StatelessWidget {
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
    backgroundColor: Color(0xff1abc9c),

    body: Column(
      children: <Widget>[
        SizedBox(
          height: 110
        ),
        Padding(
          padding: EdgeInsets.only(left:16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text ("Select Service", style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
              IconButton(
                alignment: Alignment.topCenter,
                icon: Icon(Icons.settings_applications),
                onPressed: (){

                },
              )
            ],
          )
        ),
        SizedBox(
          height: 40,
        ),
        GridDashboard()
      ],
    ),
      bottomNavigationBar: Container(
        height: 55.0,
        child: BottomAppBar(
          color: Colors.teal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home, color: Colors.white),
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
                icon: Icon(Icons.account_circle, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyProfile()),
                  );
                },
              )
            ],
          ),
        ),
      )

  );
}