import 'package:flutter/material.dart';
import 'LogIn.dart';
import 'SignUp.dart';

class LandingPage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Container(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              SizedBox(
              height: 100.0,
              child: Image.asset(
                "assets/logo.jpg",
                fit: BoxFit.contain,
              ),
            ),
            ],
          ),
          ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(4.0),
      child: Text(
        'EasyFind',
        style: TextStyle(fontSize: 24.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: new Card(
          child: new Container(
            padding: new EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.blue,
                Colors.lightBlueAccent,
              ]),
            ),
            child: new Column(
              children: <Widget>[
                new Text(
        'Welcome to EasyFind Africa. Apart from Buy Insurance and '
        'Report Motor Accident modules which are free, all other '
        'modules are available on a Pay-As-You-Go or subscription basis.'
        ' Please choose your preferred mode of engagement below. '
        'Under subscription, you may subscribe for individual services '
        'or choose the total package and enjoy substantial saving.',
        style: TextStyle(fontSize: 16.0,letterSpacing: 1.2, fontFamily: 'OpenSans',color: Colors.white),
      ),
            ],
          ),
          ),
      ),
    );


    final logReg = Padding(
      padding: EdgeInsets.all(8.0),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new RaisedButton(
                elevation: 5.0,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                  //  Navigator.of(context).pushNamed(LoginScreen.tag);
                },
                padding: EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Colors.white,
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Color(0xFF527DAA),
                    letterSpacing: 1.5,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                ),
              ),
              new RaisedButton(
                elevation: 5.0,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                  //  Navigator.of(context).pushNamed(LoginScreen.tag);
                },
                padding: EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Colors.white,
                child: Text(
                  'SIGN UP',
                  style: TextStyle(
                    color: Color(0xFF527DAA),
                    letterSpacing: 1.5,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[alucard, welcome, lorem, logReg],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
