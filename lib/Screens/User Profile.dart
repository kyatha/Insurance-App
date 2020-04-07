import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'My Profile'),
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

//    Widget _buildSurname(){
//      return TextFormField(
//        decoration: InputDecoration(labelText: 'Surname'),
//
//        validator: (String value){
//          if (value.isEmpty){
//            return 'This field is required';
//          }
//          return null;
//        },
//
//        onSaved: (String value){
//          _surname = value;
//        },
//      );
//    }
    Widget _buildUserDetails() {
      return Form(

        key: _formKey,
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

            new DropdownButton(
              hint: Text('Select your gender'), // Not necessary for Option 1
              value: _selectedGender,
              onChanged: (newValue) {
                setState(() {
                  _selectedGender = newValue;
                });
              },
              items: _genderTypes.map((gender) {
                return DropdownMenuItem(
                  child: new Text(gender),
                  value: gender,
                );
              }).toList(),
            ),
          ],

        ),
      );
    }
//
//      Widget _buildAddress(){
//        return new Column(
//          children: <Widget>[
//            new ListTile(
//              leading: const Icon(Icons.phone_android),
//              title: new TextField(
//                decoration: new InputDecoration(
//                    hintText: "Phone number"
//                ),
//
//              ),
//
//            ),
//
//          ],
//        );
//      }
//
//      Widget _buildEmail()
//      {
//        return TextFormField(
//            decoration: InputDecoration(labelText: 'Email'),
//            // ignore: missing_return
//            validator: (String value){
//              if (value.isEmpty){
//                return 'This field is required';
//      }
//
//
//      if (!RegExp(
//      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
//          .hasMatch(value)) {
//      return 'Please enter a valid email Address';
//      }
//
//      return null;
//            },
//
//
//          onSaved: (String value){
//            _email = value;
//          },
//        );
//      }
//
//      @override
//      Widget _buildGender() {
//        return Column(
//          children: <Widget>[
//            RadioListTile<SexOptions>(
//              title: const Text('Male'),
//              value: SexOptions.male,
//              groupValue: _character,
//              onChanged: (SexOptions value) { setState(() { _character = value; }); },
//            ),
//            RadioListTile<SexOptions>(
//              title: const Text('Female'),
//              value: SexOptions.female,
//              groupValue: _character,
//              onChanged: (SexOptions value) { setState(() { _character = value; }); },
//            ),
//          ],
//        );
//      }
//      Divider(
//        height: 20,
//        color: Colors.tealAccent,
//      );
//      Widget _buildOccupation(){
//        return TextFormField(
//            decoration: InputDecoration(labelText: 'Occupation'),
//            // ignore: missing_return
//            validator: (String value){
//        if (value.isEmpty){
//        return 'This field is required';
//        }
//        }
//          return null;
//        },
//
//        onSaved: (String value){
//          _occupation = value;
//        },
//      );
//    }  Widget _buildPlaceOfWork(){
//      return TextFormField(
//        decoration: InputDecoration(labelText: 'Place of work'),
//        // ignore: missing_return
//        validator: (String value){
//          if (value.isEmpty){
//            return 'This field is required';
//          }
//          return null;
//        },
//
//        onSaved: (String value){
//          _placeOfWork = value;
//        },
//      );
//    }  Widget _buildLicenseType(){
//      return TextFormField(
//        decoration: InputDecoration(labelText: 'License type'),
//        // ignore: missing_return
//        validator: (String value){
//          if (value.isEmpty){
//            return 'This field is required';
//          }
//          return null;
//        },
//
//        onSaved: (String value){
//          _licenseType = value;
//        },
//      );
//    }
//    Widget _buildMaritalStatus(){
//      return TextFormField(
//        decoration: InputDecoration(labelText: 'Marriage status'),
//
//        validator: (String value){
//          if (value.isEmpty){
//            return 'This field is required';
//          }
//          return null;
//        },
//
//        onSaved: (String value){
//          _maritalStatus = value;
//        },
//      );
//    }
//
//    Widget _buildPreviousInsurer(){
//      return TextFormField(
//        decoration: InputDecoration(labelText: 'Previous insurer'),
//        // ignore: missing_return
//        validator: (String value){
//          if (value.isEmpty){
//            return 'This field is required';
//          }
//          return null;
//        },
//
//        onSaved: (String value){
//          _previousInsurer = value;
//        },
//      );
//    }
//    Widget _buildPhoneNumber()
//    {
//      return TextFormField(
//        decoration: InputDecoration(labelText: 'Phone number'),
//        keyboardType:TextInputType.phone,
//        validator: (String value){
//          if (value.isEmpty){
//            return 'Phone number required';
//          }
//          return null;
//        },
//        onSaved: (String value){
//          _phoneNumber = value as int;
//        },
//      );
//    }
//
//    Widget _buildId(){
//      return TextFormField(
//        decoration: InputDecoration(labelText: 'Enter your national Id number'),
//        keyboardType: TextInputType.number,
//        validator: (String value){
//          if (value.isEmpty){
//            return 'Id number is required';
//          }
//          return null;
//        },
//        onSaved: (String value){
//          _id = value as int;
//        },
//
//      );
//    }
//  Widget _buildCoverDuration(){
//    return DatePickerMode(
//      decoration: InputDecoration(labelText: 'Cover duration'),
//      validator: (DateTime value){
//        if (value.isEmpty){
//          return 'This field is required';
//        }
//      },
//
//      onSaved: (String value){
//        _periodOfCover = value;
//      },
//    );
//  }
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
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
//                          _buildPhoneNumber(),
//                          _buildId(),
//                          _buildEmail(),
//                          _buildAddress(),
//                          _buildGender(),
//                          _buildMaritalStatus(),
//                          _buildOccupation(),
//                          _buildPlaceOfWork(),
//                          _buildLicenseType(),
////                    _buildCoverDuration(),
////                    __buildRoadTaxExpiry(lastDate: null, context: null, initialDate: null, firstDate: null),
//                          _buildPreviousInsurer(),
                  SizedBox(height: 100),
                  RaisedButton(
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.teal, fontSize: 24),
                    ),
                    onPressed: (){
                      Scaffold
                          .of(context)
                          .showSnackBar(SnackBar(content: Text('Processing Data')));

                      if(_formKey.currentState.validate()){
                        return;
                      }
//                              Navigator.push(
//                                context,
//                                MaterialPageRoute(builder: (context) => ,
//                              );

                      _formKey.currentState.save();
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