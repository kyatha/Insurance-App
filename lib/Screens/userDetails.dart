import 'package:flutter/material.dart';
import 'package:insuranceapp/Screens/vehicleDetails.dart';


// ignore: camel_case_types
class userDetails extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'Easy Find'),
    );
  }
}

enum SexOptions { male, female }


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _genderTypes = ['Male', 'Female'];
  List<String> _situationShip = ['Single', 'Married', 'Divorced', 'Widowed'];
  String _selectedStatus; // Option 2// Option 2
  String _selectedGender; // Option 2// Option 2
  String _surname, _name,_address, _email, _gender, _occupation, _placeOfWork, _licenseType, _maritalStatus, _previousInsurer;
  int _id, _phoneNumber;
  DateTime _periodOfCover, _roadTaxExpiry;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    Widget _buildUserDetails() {
      return Form(
        child: new Column(
          children: <Widget>[
            new ListTile(
              leading: const Icon(Icons.person, color: Colors.teal),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Full name",
                  contentPadding: EdgeInsets.all(15.0),
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.teal[100],
                ),

              ),
            ),
            new ListTile(
              leading: const Icon(Icons.phone_android, color: Colors.teal),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Phone number:",
      contentPadding: EdgeInsets.all(15.0),
      border: InputBorder.none,
      filled: true,
      fillColor: Colors.teal[100],
                ),
              ),
            ),

            new ListTile(
              leading: const Icon(Icons.perm_identity, color: Colors.teal),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "ID number:",
                  contentPadding: EdgeInsets.all(15.0),
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.teal[100],
                ),
              ),
            ),

            new ListTile(
              leading: const Icon(Icons.email, color: Colors.teal),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Email:",
                  contentPadding: EdgeInsets.all(15.0),
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.teal[100],
                ),
              ),


            ),

            new ListTile(
              leading: const Icon(Icons.group_work, color: Colors.teal),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Occupation:",
                  contentPadding: EdgeInsets.all(15.0),
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.teal[100],
                ),
              ),
            ),

            new ListTile(
              leading: const Icon(Icons.work, color: Colors.teal),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Place of work:",
                  contentPadding: EdgeInsets.all(15.0),
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.teal[100],
                ),
              ),
            ),

            new ListTile(
              leading: const Icon(Icons.drive_eta, color: Colors.teal),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "License Type:",
                  contentPadding: EdgeInsets.all(15.0),
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.teal[100],
                ),
              ),
            ),

            new ListTile(
              leading: const Icon(Icons.airline_seat_individual_suite, color: Colors.teal,),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Previous insurer:",
                  contentPadding: EdgeInsets.all(10.0),
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.teal[100],
                ),
              ),
            ),

//          new DropdownButton(
//              hint: Text('Select your gender'), // Not necessary for Option 1
//              value: _selectedGender,
//              onChanged: (newValue) {
//                setState(() {
//                  _selectedGender = newValue;
//                });
//              },
//              items: _genderTypes.map((gender) {
//                return DropdownMenuItem(
//                  child: new Text(gender),
//                  value: gender,
//                );
//              }).toList(),
//            ),
          ],

        ),
      );
    }

    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.people,
          ),
            title: Text('Vehicle Owner details'),
        centerTitle: true,),

        body: Container(
            margin: EdgeInsets.all(12),
            child: SingleChildScrollView(
              child: Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,

                        children: <Widget>[
                          _buildUserDetails(),
                          SizedBox(height: 30),
                          RaisedButton(
                            child: Text(
                              'Next',
                              style: TextStyle(color: Colors.green, fontSize: 24),
                            ),
                            onPressed: (){
                              Navigator.push(
                                context,
                               MaterialPageRoute(builder: (context) => vehicleDetails()),
                             );
                              print("successfully submitted the details");
                            },

                          )



                        ],
                      )
                  ),
            ),
              ),
            );
  }
}
