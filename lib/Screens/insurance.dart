import 'package:flutter/material.dart';
import 'package:insuranceapp/Screens/Motor_insurance.dart';

class get_insurance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Types of Insurance Available')),
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
  child:
      ListTile(
        title: Text('Motor Insurance'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => motor_insurance()),
          );
        },
      ),
      ),
  Card(
  child: ListTile(
        title: Text('Business All Risk Insurance'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => _buildAboutDialog(context),
          );
        },
      ),
  ),
  Card(
  child: ListTile(
        title: Text('Golfers Insurance'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => _buildAboutDialog(context),
          );
        },
      ),
  ),
  Card(
  child: ListTile(
        title: Text('Medical Insurance'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => _buildAboutDialog(context),
          );
        },
      ),
  ),
  Card(
  child: ListTile(
        title: Text('Workman Insurance'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => _buildAboutDialog(context),
          );
        },
      ),
  ),
  Card(
  child: ListTile(
        title: Text('Professional indemnity Insurance'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => _buildAboutDialog(context),
          );
        },
      ),
  ),
  Card(
  child:ListTile(
        title: Text('Agricultural Insurance'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => _buildAboutDialog(context),
          );
        },
      ),
  ),
  Card(
  child:ListTile(
        title: Text('Livestock Insurance'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => _buildAboutDialog(context),
          );
        },
      ),
  ),
  Card(
  child:ListTile(
        title: Text('Goods in Transit Insurance'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => _buildAboutDialog(context),
          );
        },
      ),
  ),
  Card(
  child:ListTile(
        title: Text('House Contents Insurance'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => _buildAboutDialog(context),
          );
        },
      ),
  ),
      Card(
        child:ListTile(
        title: Text('Property Insurance'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => _buildAboutDialog(context),
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
