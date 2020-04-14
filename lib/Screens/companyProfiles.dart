
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:insuranceapp/Screens/premiumCalculator.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Participating companies',
    theme: ThemeData(
      primaryColor: Colors.white,
    ),
    home: CompanyProfiles()));

class CompanyProfiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.business),
          onPressed: () {
            print("Loading companies");
          },
        ),
        title: Text('Participating Companies'),
        backgroundColor: Color(0xFFFBC044),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search button pressed');
            },
          ),
        ],
      ),
      body: Container(
        color: Color(0xFFFBC044),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              child: SimpleFoldingCell(
                frontWidget: FrontWidget(),
                innerTopWidget: InnerTopWidget(),
                innerBottomWidget: InnerBottomWidget(),
                cellSize: Size(MediaQuery.of(context).size.width, 200.0),
                padding: EdgeInsets.all(10.0),
              ),
            ),

            Container(
              child: SimpleFoldingCell(
                frontWidget: FrontWidget(),
                innerTopWidget: InnerTopWidget(),
                innerBottomWidget: InnerBottomWidget(),
                cellSize: Size(MediaQuery.of(context).size.width, 175.0),
                padding: EdgeInsets.all(10.0),
              ),
            ),

            Container(
              child: SimpleFoldingCell(
                frontWidget: FrontWidget(),
                innerTopWidget: InnerTopWidget(),
                innerBottomWidget: InnerBottomWidget(),
                cellSize: Size(MediaQuery.of(context).size.width, 175.0),
                padding: EdgeInsets.all(10.0),
              ),

            ),
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => coverTypes()),
                );
              },
              child: Text('Shop Covers', style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Color(0xff6a53a4),
              ),),
              padding: EdgeInsets.only(bottom: 10, top: 10, right:24, left:24),
            )


          ],
        ),

      ),

    );
  }
}

// ignore: non_constant_identifier_names
Container InnerBottomWidget() {
  return Container(
    color: Colors.white,
    child: Column(
      children: <Widget>[
        Container(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child:Text("More about the company", style:
              TextStyle(
                color: Color(0xff6a53a4),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),)
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.all(.0),
            child:   FlatButton(
              onPressed: () {
                //TODO: Write a function to redirect to the covers page.

              },
              child: Text('Shop here', style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Color(0xff6a53a4),
              ),),
              padding: EdgeInsets.only(bottom: 10, top: 10, right:24, left:24),
            ),
          ),
        )


      ],
    )
  );
}

// ignore: non_constant_identifier_names, missing_return
Container InnerTopWidget() {
  return Container(
    color: Color(0xff6a53a4),
    alignment: Alignment.center,
    child:Container(
      child: Column(
        children: <Widget>[
          Container(
            //Heading
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: Text('Company name',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.bold
              ),),

            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  //Icon
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon ( Icons.add,
                    color: Colors.white,),

                  ),

                ),
                Container(
                  //Text
                  child: Text(
                    "Best known for +++",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            //Title
          ),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  //Icon
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon ( Icons.multiline_chart,
                      color: Colors.white,),

                  ),

                ),
                Container(
                  //Text
                  child: Text(
                    "Another positive thing",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            //Title
          ),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  //Icon
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon ( Icons.money_off,
                      color: Colors.white,),

                  ),

                ),
                Container(
                  //Text
                  child: Text(
                    "How it saves customers money (or anything, really)",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            //Title
          ),
        ],
      ),
    )
  );
}

// ignore: non_constant_identifier_names
Container FrontWidget() {
  return Container(
    color: Color(0xffdfd4f4),
    alignment: Alignment.center,
    child: Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Color(0xff6a53a4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Company X',
                            style: TextStyle(
                              color: Color.fromRGBO(118, 215, 196 , 20),
                              fontSize: 16.0,
                            ),
                          )),
                    ),
                    Container(
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Nairobi, Kenya',
                            style: TextStyle(
                              color: Color(0xFFc8b6ea),
                              fontSize: 16.0,
                            ),
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Some sweet line about the company',
                      style: TextStyle(
                      color: Color(0xff6a53a4),
                      fontSize: 20.0,
                        fontWeight: FontWeight.bold,

                    ),),
                  )
                ),

                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.location_on,
                            color: new Color(0xfff7B928),
                            size: 20.0,

                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child:Text(
                            "Head Office Nairobi",
                            style: TextStyle(
                              color: Color(0xfff7B928),
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold
                            ),
                          )

                        ),
                      )
                    ],
                  ),
                )
              ],

            ),
          ),
        ),
      ],
    ),
  );
}
