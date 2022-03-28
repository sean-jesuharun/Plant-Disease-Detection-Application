import 'package:flutter/material.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Grape/grape1.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Grape/grape2.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Grape/grape3.dart';




class grape extends StatefulWidget {
  const grape({Key? key}) : super(key: key);

  @override
  _grapeState createState() => _grapeState();
}

class _grapeState extends State<grape> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData size = MediaQuery.of(context);
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Container(
        height: size.size.height,
        width: size.size.width,
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Text(
              "Grape",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 80.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => grapeone()));
                },
                child: Text("  Grape Black rot  ")),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => grapetwo()));
                },
                child: Text("    Grape Esca    ")),

                SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => grapethree()));
                },
                child: Text("Grape Leaf blight ")),
            ],
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.png"), fit: BoxFit.cover)),
      )),
    ));
  }
}