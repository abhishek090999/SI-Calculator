import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: EdgeInsets.only(left: 10.0, top: 40.0),
          alignment: Alignment.center,
          color: Colors.green,
          //width: 200.0,
          //height: 100.0,
          //  margin: EdgeInsets.only(left: 50),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text("Indigo",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 50.0,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                              color: Colors.white))),
                  Expanded(
                      child: Text("From Patna to Guwahati",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 30.0,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                              color: Colors.white)))
                ],
              ),
              FlightImage(),
              FlightBookButton()
            ],
          )),
    );
  }
}

class FlightImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/flight.png');
    Image image = Image(image: assetImage);
    return Container(child: image);
  }
}

class FlightBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10.0),
        width: 250.0,
        height: 50.0,
        child: RaisedButton(
            color: Colors.deepOrange,
            child: Text(
              "Book your flight",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic),
            ),
            elevation: 25.0,
            onPressed: () {
              bookFlight(context);
            }));
  }
}

void bookFlight(BuildContext context) {
  var alertdialog = AlertDialog(
    title: Text("Flight Booked Successfully"),
    content: Text("Have a nice Journey"),
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertdialog;
      });
}
