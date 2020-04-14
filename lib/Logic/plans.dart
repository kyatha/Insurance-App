import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insuranceapp/Screens/userDetails.dart';

class Plans extends StatefulWidget {
  @override
  _PlansState createState() => _PlansState();
}

class _PlansState extends State<Plans> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(FontAwesomeIcons.bars,
          color: Colors.white,
        ), onPressed: () => {}),
        title: Text("Plans"),
        actions: <Widget>[
          IconButton(icon: Icon(FontAwesomeIcons.coins), onPressed: () {

          }),
          IconButton(icon: Icon(FontAwesomeIcons.ellipsisV), onPressed: () {
            //
          }),
        ],
      ),
      body: Center(
        child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Color(0xff5a348b),
                    gradient: LinearGradient(
                        colors: [Color(0xff8d70fe), Color(0xff2da9ef)],
                        begin: Alignment.centerRight,
                        end: Alignment(-1.0, -1.0)
                    ), //Gradient
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //Text
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Container(
                              child: Text('Comprehensive', style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),),
                            ),
                          ),
                          //subText
                          Container(
                            child: Text(
                              'Repair or replace vehicle and its parts in case of loss \n or damage and cover 3rd party legal liability',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 16.0,
                              ),),
                          ),
                          //Circle Avatar
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Container(
                                width:10.0,
                                height: 10.0,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        '\u00243.99', style: TextStyle(
                                        fontSize: 10.0,
                                        color: Color(0xff8d70fe),
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    ),
                                    Container(
                                      child: Text('/mo', style: TextStyle(
                                        fontSize: 10.0,
                                        color: Color(0xff8d70fe),
                                      ),),),
                                  ],)
                            ),
                          ),

                          //Two Column Table
                          DataTable(
                            columns: <DataColumn>[
                              DataColumn(
                                label: Text(''),
                              ),
                              DataColumn(
                                label: Text(''),
                              ),
                            ],
                            rows: <DataRow>[
                              DataRow(
                                  cells: <DataCell>[
                                    DataCell(
                                      myRowDataIcon(
                                          FontAwesomeIcons.database, "Basic Premium"),
                                    ),
                                    DataCell(
                                      Text('300000',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),),
                                    ),
                                  ]
                              ),
                              DataRow(
                                  cells: <DataCell>[
                                    DataCell(
                                      myRowDataIcon(
                                          FontAwesomeIcons.users,
                                          "Training levy"),
                                    ),
                                    DataCell(
                                      Text('250', style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                    ),
                                  ]
                              ),
                              DataRow(
                                  cells: <DataCell>[
                                    DataCell(
                                      myRowDataIcon(
                                          FontAwesomeIcons.folderOpen,
                                          "PHCF"),
                                    ),
                                    DataCell(
                                      Text('300', style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                    ),
                                  ]
                              ),
                              DataRow(
                                  cells: <DataCell>[
                                    DataCell(
                                      myRowDataIcon(
                                          FontAwesomeIcons.phone,
                                          "Stamp Duty"),
                                    ),
                                    DataCell(
                                      Text('400', style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                    ),
                                  ]
                              ),
                              DataRow(
                                  cells: <DataCell>[
                                    DataCell(
                                      myRowDataIcon(FontAwesomeIcons.envelope,
                                          "EasyFind Fee"),
                                    ),
                                    DataCell(
                                      Text('500', style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                    ),
                                  ]
                              ),
                            ],
                          ),

                          //Button
                          Padding(
                            padding: const EdgeInsets.only(top: 3.0),
                            child: RaisedButton(
                                color: new Color(0xffffffff),
                                child: Text('Choose Plan',
                                  style: TextStyle(
                                    color: new Color(0xff6200ee),
                                  ),),
                                onPressed: () => (Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => userDetails()),
                                )),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      30.0),)
                            ),
                          ),

                        ],),
                    ],),
                ),
              ),

              //Third party Theft and fire
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Color(0xff5a348b),
                    gradient: LinearGradient(
                        colors: [Color(0xff8d70fe), Color(0xff2da9ef)],
                        begin: Alignment.centerRight,
                        end: Alignment(-1.0, -1.0)
                    ), //Gradient
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //Text
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Container(
                              child: Text('Comprehensive', style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),),
                            ),
                          ),
                          //subText
                          Container(
                            child: Text(
                              'Repair or replace vehicle and its parts in case of loss \n or damage and cover 3rd party legal liability',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 16.0,
                              ),),
                          ),
                          //Circle Avatar
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Container(
                                width:10.0,
                                height: 10.0,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        '\u00243.99', style: TextStyle(
                                        fontSize: 10.0,
                                        color: Color(0xff8d70fe),
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    ),
                                    Container(
                                      child: Text('/mo', style: TextStyle(
                                        fontSize: 10.0,
                                        color: Color(0xff8d70fe),
                                      ),),),
                                  ],)
                            ),
                          ),

                          //Two Column Table
                          DataTable(
                            columns: <DataColumn>[
                              DataColumn(
                                label: Text(''),
                              ),
                              DataColumn(
                                label: Text(''),
                              ),
                            ],
                            rows: <DataRow>[
                              DataRow(
                                  cells: <DataCell>[
                                    DataCell(
                                      myRowDataIcon(
                                          FontAwesomeIcons.database, "Basic Premium"),
                                    ),
                                    DataCell(
                                      Text('300000',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),),
                                    ),
                                  ]
                              ),
                              DataRow(
                                  cells: <DataCell>[
                                    DataCell(
                                      myRowDataIcon(
                                          FontAwesomeIcons.users,
                                          "Training levy"),
                                    ),
                                    DataCell(
                                      Text('250', style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                    ),
                                  ]
                              ),
                              DataRow(
                                  cells: <DataCell>[
                                    DataCell(
                                      myRowDataIcon(
                                          FontAwesomeIcons.folderOpen,
                                          "PHCF"),
                                    ),
                                    DataCell(
                                      Text('300', style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                    ),
                                  ]
                              ),
                              DataRow(
                                  cells: <DataCell>[
                                    DataCell(
                                      myRowDataIcon(
                                          FontAwesomeIcons.phone,
                                          "Stamp Duty"),
                                    ),
                                    DataCell(
                                      Text('400', style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                    ),
                                  ]
                              ),
                              DataRow(
                                  cells: <DataCell>[
                                    DataCell(
                                      myRowDataIcon(FontAwesomeIcons.envelope,
                                          "EasyFind Fee"),
                                    ),
                                    DataCell(
                                      Text('500', style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                    ),
                                  ]
                              ),
                            ],
                          ),

                          //Button
                          Padding(
                            padding: const EdgeInsets.only(top: 3.0),
                            child: RaisedButton(
                                color: new Color(0xffffffff),
                                child: Text('Choose Plan',
                                  style: TextStyle(
                                    color: new Color(0xff6200ee),
                                  ),),
                                onPressed: () => (Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => userDetails()),
                                )),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      30.0),)
                            ),
                          ),

                        ],),
                    ],),
                ),
              ),

              ///Third Party COver
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Color(0xff5a348b),
                    gradient: LinearGradient(
                        colors: [Color(0xff8d70fe), Color(0xff2da9ef)],
                        begin: Alignment.centerRight,
                        end: Alignment(-1.0, -1.0)
                    ), //Gradient
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //Text
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Container(
                              child: Text('Comprehensive', style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),),
                            ),
                          ),
                          //subText
                          Container(
                            child: Text(
                              'Repair or replace vehicle and its parts in case of loss \n or damage and cover 3rd party legal liability',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 16.0,
                              ),),
                          ),
                          //Circle Avatar
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Container(
                                width:10.0,
                                height: 10.0,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        '\u00243.99', style: TextStyle(
                                        fontSize: 10.0,
                                        color: Color(0xff8d70fe),
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    ),
                                    Container(
                                      child: Text('/mo', style: TextStyle(
                                        fontSize: 10.0,
                                        color: Color(0xff8d70fe),
                                      ),),),
                                  ],)
                            ),
                          ),

                          //Two Column Table
                          DataTable(
                            columns: <DataColumn>[
                              DataColumn(
                                label: Text(''),
                              ),
                              DataColumn(
                                label: Text(''),
                              ),
                            ],
                            rows: <DataRow>[
                              DataRow(
                                  cells: <DataCell>[
                                    DataCell(
                                      myRowDataIcon(
                                          FontAwesomeIcons.database, "Basic Premium"),
                                    ),
                                    DataCell(
                                      Text('300000',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),),
                                    ),
                                  ]
                              ),
                              DataRow(
                                  cells: <DataCell>[
                                    DataCell(
                                      myRowDataIcon(
                                          FontAwesomeIcons.users,
                                          "Training levy"),
                                    ),
                                    DataCell(
                                      Text('250', style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                    ),
                                  ]
                              ),
                              DataRow(
                                  cells: <DataCell>[
                                    DataCell(
                                      myRowDataIcon(
                                          FontAwesomeIcons.folderOpen,
                                          "PHCF"),
                                    ),
                                    DataCell(
                                      Text('300', style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                    ),
                                  ]
                              ),
                              DataRow(
                                  cells: <DataCell>[
                                    DataCell(
                                      myRowDataIcon(
                                          FontAwesomeIcons.phone,
                                          "Stamp Duty"),
                                    ),
                                    DataCell(
                                      Text('400', style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                    ),
                                  ]
                              ),
                              DataRow(
                                  cells: <DataCell>[
                                    DataCell(
                                      myRowDataIcon(FontAwesomeIcons.envelope,
                                          "EasyFind Fee"),
                                    ),
                                    DataCell(
                                      Text('500', style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                    ),
                                  ]
                              ),
                            ],
                          ),

                          //Button
                          Padding(
                            padding: const EdgeInsets.only(top: 3.0),
                            child: RaisedButton(
                                color: new Color(0xffffffff),
                                child: Text('Choose Plan',
                                  style: TextStyle(
                                    color: new Color(0xff6200ee),
                                  ),),
                                onPressed: () => (Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => userDetails()),
                                )),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      30.0),)
                            ),
                          ),

                        ],),
                    ],),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

ListTile myRowDataIcon(IconData iconVal, String rowVal) {
  return ListTile(
    leading: Icon(iconVal,
        color: new Color(0xffffffff)),
    title: Text(rowVal, style: TextStyle(
      color: Colors.white,
    ),),
  );
}