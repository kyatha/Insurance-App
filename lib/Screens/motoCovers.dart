import 'package:flutter/material.dart';
import 'package:insuranceapp/Screens/userDetails.dart';
import 'package:insuranceapp/Screens/availableCovers.dart';

// ignore: camel_case_types
class motorCovers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Covers Available')),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  return ListView(
    children: <Widget>[
  Card(
  child:ListTile(
        title: Text('Family PA Covers'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => AvailableCovers(),
          );
        },
      ),
  ),
      Card(
        child:ListTile(
        title: Text('Other Drivers PA Cover'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => AvailableCovers(),
          );
        },
      ),
  ),
  Card(
  child:ListTile(
        title: Text('Private Cars'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => AvailableCovers(),
          );
        },
      ),
  ),
  Card(
  child:ListTile(
        title: Text('PSV- Van/Mini-Bus Within City'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => AvailableCovers(),
          );
        },
      ),
  ),
  Card(
  child:ListTile(
        title: Text('PSV- Private Buses'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => AvailableCovers(),
          );
        },
      ),
  ),
  Card(
  child:ListTile(
        title: Text('PSV- School Buses'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => AvailableCovers(),
          );
        },
      ),
  ),
  Card(
  child: ListTile(
        title: Text('PSV- Taxi, Car Hire, Tour Operator'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => AvailableCovers(),
          );
        },
      ),
  ),
  Card(
  child:ListTile(
        title: Text('PSV- Upcountry Buses'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => AvailableCovers(),
          );
        },
      ),
  ),
  Card(
  child:
      ListTile(
        title: Text('Comm Goods VEH (For Hire)'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => AvailableCovers(),
          );
        },
      ),
  ),
  Card(
  child:
      ListTile(
        title: Text('Comm Goods VEH (Own Goods)'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => AvailableCovers(),
          );
        },
      ),
  ),
  Card(
  child:
      ListTile(
        title: Text('Special Type VEH- Oil Tankers Aluminium Body (Less than 10 years)'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => AvailableCovers(),
          );
        },
      ),
  ),
  Card(
  child:
      ListTile(
        title: Text('Special Type VEH- Oil Tankers Steel Body (Less than 10 years)'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => AvailableCovers(),
          );
        },
      ),
  ),
  Card(
  child:
      ListTile(
        title: Text('Special Type VEH- Farm Tractors, Forklift, Cranes'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
          context: context,
            builder: (BuildContext context) => AvailableCovers(),
        );
        },
      ),
  ),
  Card(
  child:
      ListTile(
        title: Text('Special Type VEH- Excavators, Graders,Dozers,Loaders'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => AvailableCovers(),
          );
        },
      ),
  ),
  Card(
  child:
      ListTile(
        title: Text('Motorcycles & 3 wheelers'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => AvailableCovers(),
          );
        },
      ),
  ),
  Card(
  child:
      ListTile(
        title: Text('Trailers (Less than 10 Years)'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => AvailableCovers(),
          );
        },
      ),
  ),
  Card(
  child:
      ListTile(
        title: Text('Oil Tankers (Over 10 Years Old)'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => AvailableCovers(),
          );
        },
      ),
  ),
  Card(
  child:
      ListTile(
        title: Text('Trailers (Over than 10 Years)'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => AvailableCovers(),
          );
        },
      ),
  ),
    ],
  );
}
Widget _buildAboutDialog(BuildContext context) {
  return new AlertDialog(
    title: new Text('Details coming soon'),
    content: new SingleChildScrollView(
      child: new ListBody(
        children: <Widget>[
          new Text(' Dear Customer, '
              'More details on this cover will be updated soon.'),
        ],
      ),
    ),
    actions: <Widget>[
      new FlatButton(
        child: new Text('Back'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ],
  );
}