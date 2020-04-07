import 'package:flutter/material.dart';
import 'package:insuranceapp/Screens/insurance.dart';
import 'package:insuranceapp/Screens/renew.dart';
import 'package:insuranceapp/Screens/rescue.dart';
import 'package:insuranceapp/Screens/report.dart';
import 'package:insuranceapp/Screens/User Profile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
          primaryColor: Colors.teal, fontFamily: 'Raleway'),
      home: new ListPage(title: 'Our Services'),
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
    backgroundColor: Colors.teal,
    appBar: topAppBar,
    body: ListView(
    children: <Widget>[
      Card(
        elevation: 8.0,
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.teal),
          child: ListTile(

            contentPadding:
            EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            leading: Container(
              padding: EdgeInsets.only(right: 12.0),
              decoration: new BoxDecoration(
                  border: new Border(
                      right: new BorderSide(
                          width: 1.0, color: Colors.white24))),
              child: Icon(Icons.autorenew, color: Colors.white),
            ),
            title: Text(
              "Buy Insurance",
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),


            subtitle: Row(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text("New customers",
                          style: TextStyle(color: Colors.white))),
                )
              ],
            ),
            trailing:
            Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => get_insurance()),
              );
            },
          ),
        ),
      ),
      Card(
        elevation: 8.0,
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.teal),
          child: ListTile(

            contentPadding:
            EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            leading: Container(
              padding: EdgeInsets.only(right: 12.0),
              decoration: new BoxDecoration(
                  border: new Border(
                      right: new BorderSide(
                          width: 1.0, color: Colors.white24))),
              child: Icon(Icons.autorenew, color: Colors.white),
            ),
            title: Text(
              "Report Accident",
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),


            subtitle: Row(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text("For existing insurance holders",
                          style: TextStyle(color: Colors.white))),
                )
              ],
            ),
            trailing:
            Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => get_report()),
              );
            },
          ),
        ),
      ),
      Card(
        elevation: 8.0,
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.teal),
          child: ListTile(

            contentPadding:
            EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            leading: Container(
              padding: EdgeInsets.only(right: 12.0),
              decoration: new BoxDecoration(
                  border: new Border(
                      right: new BorderSide(
                          width: 1.0, color: Colors.white24))),
              child: Icon(Icons.autorenew, color: Colors.white),
            ),
            title: Text(
              "Renew insurance cover",
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),


            subtitle: Row(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text("For existing insurance holders",
                          style: TextStyle(color: Colors.white))),
                )
              ],
            ),
            trailing:
            Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => get_renew()),
              );
            },
          ),
        ),
      ),

      Card(
        elevation: 8.0,
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.teal),
          child: ListTile(

            contentPadding:
            EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            leading: Container(
              padding: EdgeInsets.only(right: 12.0),
              decoration: new BoxDecoration(
                  border: new Border(
                      right: new BorderSide(
                          width: 1.0, color: Colors.white24))),
              child: Icon(Icons.autorenew, color: Colors.white),
            ),
            title: Text(
              "Rescue services near me",
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),


            subtitle: Row(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text("Everyone",
                          style: TextStyle(color: Colors.white))),
                )
              ],
            ),
            trailing:
            Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
            onTap: () {
              get_rescue();
            },
          ),
        ),
      ),
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
              icon: Icon(Icons.account_box, color: Colors.white),
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
    ),
  );
}
  final topAppBar = AppBar(
    elevation: 0.1,
    backgroundColor: Colors.teal,
    title: Text('Our Services'),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.list),
        onPressed: () {},
      )
    ],
  );
