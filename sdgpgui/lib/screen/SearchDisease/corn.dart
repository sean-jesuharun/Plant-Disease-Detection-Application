import 'package:flutter/material.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Corn/corn1.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Corn/corn2.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Corn/corn3.dart';



class corn extends StatefulWidget {
  const corn({Key? key}) : super(key: key);

  @override
  _cornState createState() => _cornState();
}

class _cornState extends State<corn> {
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
              "Corn",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 80.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => cornone()));
                },
                child: Text("Cercospora leaf spot")),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => corntwo()));
                },
                child: Text("     Common rust    ")),

                SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => cornthree()));
                },
                child: Text("Northern Leaf Blight")),
            ],
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.png"), fit: BoxFit.cover)),
      )),
    ));
  }
}