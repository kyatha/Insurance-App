import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
        // We will dynamically display title of selected page
        title: new Text("home"),
    ),
    drawer: Drawer(
      child: new Column(
        children: <Widget>[
      new UserAccountsDrawerHeader(
      accountName: new Text("Kyatha Nthenya"),
      accountEmail: new Text("phone number"),
      currentAccountPicture: CircleAvatar(
        backgroundColor:  Color(0xFF73AEF5),
        child: Text(
          "A",
          style: TextStyle(fontSize: 40.0),
        ),
      ),
    ),
          _createDrawerItem(
              icon: Icons.person,
              text: 'My Profile',
              onTap: () {

              }
                 // Navigator.pushReplacementNamed(context, Routes.profile)
    ),
          Divider(),
          _createDrawerItem(
              icon: Icons.error,
              text: 'About EasyFind',
              onTap: (){}
                  //Navigator.pushReplacementNamed(context, Routes.about)
              ),
          _createDrawerItem(
              icon: Icons.assignment_turned_in,
              text: 'My Insurance Covers',
              onTap: () {}
                 // Navigator.pushReplacementNamed(context, Routes.covers)
          ),
          _createDrawerItem(icon: Icons.receipt, text: 'Reported Accidents'),
          _createDrawerItem(icon: Icons.shopping_cart, text: 'Orders'),
          Divider(),
          _createDrawerItem(
              icon: Icons.settings, text: 'Settings'),
          _createDrawerItem(icon: Icons.lock, text: 'Log Out'),

        ],
      ),
    ),
    );
  }
  

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}