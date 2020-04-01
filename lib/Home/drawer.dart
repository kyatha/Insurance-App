import 'package:insuranceapp/Home/Home.dart' as Fragments;
import 'package:flutter/material.dart';

//Let's define a DrawerItem data object
class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}
// Our Homepage
class HomePage extends StatefulWidget {
  //Let's define our drawer items, strings and images
  final drawerItems = [
    new DrawerItem("My Profile",Icons.person),
    //Divider(),
    new DrawerItem("About EasyFind",Icons.error),
    new DrawerItem("My Insurance Covers",Icons.assignment_turned_in),
    new DrawerItem("Reported Accidents",Icons.receipt),
    new DrawerItem("Orders", Icons.shopping_cart),
    //Divider(),

    new DrawerItem("Settings", Icons.settings),
    new DrawerItem("Log Out", Icons.lock)
  ];
  //Let's Create and Return state for this 'StatefulWidget'
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}
// Let's define state for our homepage. A state is just information for a widget.
class HomePageState extends State<HomePage> {
  int _selectedDrawerIndex = 0;

  //Let's use a switch statement to return the Fragment for a selected item
  _getDrawerFragment(int pos) {
    switch (pos) {
      case 0:
        return new Fragments.Profile();
      case 1:
        return new Fragments.About();
      case 2:
        return new Fragments.Covers();
      case 3:
        return new Fragments.Accidents();
      case 4:
        return new Fragments.Orders();
      case 5:
        return new Fragments.Settings();
      case 6:
        return new Fragments.LogOut();
      default:
        return new Text("Error");
    }
  }
  //Let's update the selectedDrawerItemIndex the close the drawer
  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    //we close the drawer
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [];
    //Let's create drawer list items. Each will have an icon and text
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(
          new ListTile(
            leading: new Icon(d.icon),
            title: new Text(d.title),
            selected: i == _selectedDrawerIndex,
            onTap: () => _onSelectItem(i),
          )
      );
    }
    //Let's scaffold our homepage
    return new Scaffold(
      appBar: new AppBar(
        // We will dynamically display title of selected page
        title: new Text(widget.drawerItems[_selectedDrawerIndex].title),
      ),
      // Let's register our Drawer to the Scaffold
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            //Lets Create a material design drawer header with account name, email,avatar
            new UserAccountsDrawerHeader(
              accountName: new Text("Kyatha Nthenya"),
              accountEmail: new Text("phone number"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                Theme.of(context).platform == TargetPlatform.iOS
                    ? Colors.blue
                    : Colors.white,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerFragment(_selectedDrawerIndex),
    );
  }
}
