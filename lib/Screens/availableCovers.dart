
import 'package:flutter/material.dart';
import 'package:insuranceapp/Screens/userDetails.dart';
import 'package:insuranceapp/utilities/insuranceCovers.dart';
import 'package:insuranceapp/Screens/basket.dart';

class AvailableCovers extends StatefulWidget {
  AvailableCovers() : super();
  final String title = "Available Covers";
  @override
  _AvailableCoversState createState() => _AvailableCoversState();
}

class _AvailableCoversState extends State<AvailableCovers> {
  List<Cover> covers;
  bool sort;
  List<Cover> selectedCovers;
  @override
  void initState(){
    sort = false;
    selectedCovers = [];
    covers = Cover.getCovers();
    if(covers.isEmpty){
      //show an alert that says there are no covers available. Shop redirect to aply for another.
    }
    super.initState();
  }

  onSelectedRow( bool selected, Cover cover) async{
    setState(() {
      if(selected){
        selectedCovers.add(cover);
        print(selectedCovers);
      }

      else{
        selectedCovers.remove(cover);
      }
    });


  }
   deleteCover() async{
    setState(() {
      if (selectedCovers.isNotEmpty){
        List<Cover> temp = [];
        temp.addAll(selectedCovers);
        for(Cover cover in temp){
          covers.remove(cover);
          selectedCovers.remove(cover);
        }
        print("cover deleted");
      }
    });

  }


  SingleChildScrollView coversTable(){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: DataTable(
          columns: [
            DataColumn(
                label: Text("INSURER", style: TextStyle(fontWeight: FontWeight.bold)),
                numeric: false,
                tooltip: "The company providing the cover"
            ),
            DataColumn(
                label: Text("PREMIUM", style: TextStyle(fontWeight: FontWeight.bold)),
                tooltip: "The amount per month",
             ),
            DataColumn(
              label: Text("DURATION", style: TextStyle(fontWeight: FontWeight.bold)),
              tooltip: "Frequency to pay your premium",
              numeric: false,
            ),
            DataColumn(
                label: Text("COUNTRY", style: TextStyle(fontWeight: FontWeight.bold),),
                numeric: false,
                tooltip: "Where the cover is valid"
            ),
          ],
          rows: covers.map((cover) =>
              DataRow(
                  selected: selectedCovers.contains(cover),
                  onSelectChanged: (b){
                    print("selected");
                   onSelectedRow(b, cover);
                  },
                  cells: [
                    DataCell(
                        Text(
                            cover.insurer,
                        )
                    ),
                    DataCell(
                        Text(
                            (cover.premium)
                        )
                    ),
                    DataCell(
                        Text(
                            cover.duration
                        )
                    ),
                    DataCell(
                        Text(
                            cover.country
                        )
                    ),

                  ]

              )
          ).toList()
      ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Available Covers"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Expanded(
            child: Center(
              child: coversTable(),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: OutlineButton(
                  child: Text(
                      'Delete selected',
                  ),
                  onPressed: selectedCovers.isEmpty ? null : () {
                  deleteCover();
                  },
                ),
              ),
               Padding(
                padding: EdgeInsets.all(10.0),
                child: OutlineButton(
                  child: Text(
                      "Apply New"
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => userDetails()),
                    );
                  },
                ),
              ),Padding(
                padding: EdgeInsets.all(10.0),
                child: OutlineButton(
                  child: Text(
                      "Go to basket"
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Basket()),
                    );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
