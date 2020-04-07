import 'package:flutter/material.dart';

class get_report extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Report Motor Accident')),
        body: BodyLayout(),
      ),
    );
  }
}
class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _mydetails(context);
  }
}
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
bool _autoValidate = false;
String _name;
String _email;
String _mobile;
String _maritalStatus = 'single';


Widget _mydetails(BuildContext context) {
  return new MaterialApp(
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text('Form Validation'),
      ),
      body: new SingleChildScrollView(
        child: new Container(
          margin: new EdgeInsets.all(15.0),
          child: new Form(
            key: _formKey,
            autovalidate: _autoValidate,
            child: FormUI(),
          ),
        ),
      ),
    ),
  );
}

// Here is our Form UI
Widget FormUI() {
  return new Column(
    children: <Widget>[
      new TextFormField(
        decoration: const InputDecoration(labelText: 'Name'),
        keyboardType: TextInputType.text,
        validator: validateName,
        onSaved: (String val) {
          _name = val;
        },
      ),
      new TextFormField(
        decoration: const InputDecoration(labelText: 'Mobile'),
        keyboardType: TextInputType.phone,
        validator: validateMobile,
        onSaved: (String val) {
          _mobile = val;
        },
      ),
      new TextFormField(
        decoration: const InputDecoration(labelText: 'Email'),
        keyboardType: TextInputType.emailAddress,
        validator: validateEmail,
        onSaved: (String val) {
          _email = val;
        },
      ),


      new SizedBox(
        height: 10.0,
      ),
    ],
  );
}
String validateName(String value) {
  if (value.length < 3)
    return 'Name must be more than 2 charater';
  else
    return null;
}

String validateMobile(String value) {
// Indian Mobile number are of 10 digit only
  if (value.length != 10)
    return 'Mobile Number must be of 10 digit';
  else
    return null;
}

String validateEmail(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value))
    return 'Enter Valid Email';
  else
    return null;
}

