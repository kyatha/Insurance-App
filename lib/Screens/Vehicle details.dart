import 'package:flutter/material.dart';

class VehicleDetails extends StatelessWidget {

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

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _surname, _name,_address, _email, _gender, _occupation, _placeOfWork, _licenseType, _maritalStatus, _previousInsurer;
  int _id, _phoneNumber;
  DateTime _periodOfCover, _roadTaxExpiry;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    Widget _buildCarDetails() {
      return Form(
        child: new Column(
          children: <Widget>[
            new ListTile(
              leading: const Icon(Icons.directions_car),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Make / Model"
                ),

              ),

            ),
            new ListTile(
              leading: const Icon(Icons.date_range),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Year of manufacture:"
                ),
              ),
            ),

            new ListTile(
              leading: const Icon(Icons.color_lens),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Color:"
                ),
              ),
            ),

            new ListTile(
              leading: const Icon(Icons.email),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Email:"
                ),
              ),


            ),

            new ListTile(
              leading: const Icon(Icons.group_work),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Status:"
                ),
              ),
            ),

            new ListTile(
              leading: const Icon(Icons.work),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Type:"
                ),
              ),
            ),

            new ListTile(
              leading: const Icon(Icons.drive_eta),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Body Type:"
                ),
              ),
            ),

            new ListTile(
              leading: const Icon(Icons.airline_seat_individual_suite),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Registration number:"
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.airline_seat_individual_suite),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Engine Capacity:"
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.airline_seat_individual_suite),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Chasis number:"
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.airline_seat_individual_suite),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Sum insured:"
                ),
              ),
            ),

            new ListTile(
              leading: const Icon(Icons.airline_seat_individual_suite),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Sitting capacity:"
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.airline_seat_individual_suite),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Transmission:"
                ),
              ),
            ),

            new ListTile(
              leading: const Icon(Icons.airline_seat_individual_suite),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Fuel:"
                ),
              ),
            ),

            new ListTile(
              leading: const Icon(Icons.airline_seat_individual_suite),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Is engine modified:"
                ),
              ),
            ),

            new ListTile(
              leading: const Icon(Icons.airline_seat_individual_suite),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Where kept at night:"
                ),
              ),
            ),

            new ListTile(
              leading: const Icon(Icons.airline_seat_individual_suite),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Use:"
                ),
              ),
            ),

            new ListTile(
              leading: const Icon(Icons.airline_seat_individual_suite),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Kilometers per year:"
                ),
              ),
            ),

            new ListTile(
              leading: const Icon(Icons.airline_seat_individual_suite),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Has it been purchased at an Auction Sale?"
                ),
              ),
            ),

            new ListTile(
              leading: const Icon(Icons.airline_seat_individual_suite),
              title: new TextField(
                decoration: new InputDecoration(
                    hintText: "Has it been involved in an accident before?"
                ),
              ),
            ),

          ],

        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.people,
        ),
        title: Text('Vehicle details'),
        centerTitle: true,),

      body: Container(
        margin: EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,

                children: <Widget>[
                  _buildCarDetails(),
                  SizedBox(height: 100),
                  RaisedButton(
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.lightBlueAccent, fontSize: 12),
                    ),
                    onPressed: (){
                      if(_formKey.currentState.validate()){
                        Scaffold
                            .of(context)
                            .showSnackBar(SnackBar(content: Text('Processing Data')));
                        return;
                      }

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