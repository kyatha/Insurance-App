import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insuranceapp/Screens/coverTypes.dart';


class GridDashboard extends StatefulWidget
{

  @override
  _GridDashboardState createState() => _GridDashboardState();
}

class _GridDashboardState extends State<GridDashboard> {

   Services buyInsurance = new Services(
    title: "Buy new insurance",
    subTitle: "Exisitng and new customers",
    img: "assets/buy.jpg",
  );

   Services renewCover = new Services(
      title: "Renew insurance cover",
      subTitle: "Customers with existing covers only",
      img: "assets/buy.jpg"

  );

   Services reportAccident = new Services(
      title: "Report accident",
      subTitle: "For all users",
      img: "assets/buy.jpg"

  );

   Services rescueService = new Services(
      title: "Rescue services",
      subTitle: "See road rescue services near you",
      img: "assets/buy.jpg"
  );

  @override
  Widget build(BuildContext context) {
    List<Services> myServices = [buyInsurance, renewCover, reportAccident, rescueService];
    var color = 0xff16a085;
        return Flexible(

  child: GridView.count(
    childAspectRatio: 1.0,
    padding: EdgeInsets.only(left: 16, right: 16),
    crossAxisCount: 2,
    crossAxisSpacing: 18,
    mainAxisSpacing: 18,
    children: myServices.map((data)
    {
      return GestureDetector
        (
        onTap: (){

          //create an if function to redirect according to index
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => coverTypes()),
          );
        },
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(data.img, width: 42),
            SizedBox(
              height: 14,
            ),
            Text(
              data.title,
              style: GoogleFonts.roboto(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600)),
              ),
        SizedBox(
          height: 8,
        ),
        Text(
          data.subTitle, style: GoogleFonts.roboto(
            textStyle: TextStyle(
                color: Colors.white38,
                fontSize: 10,
                fontWeight: FontWeight.w600)),
        ),

          ],
        ),

      );
    }).toList()),
    );
  }

}

class Services{
  String title, subTitle, img;
  Services({this.title, this.subTitle, this.img});
}