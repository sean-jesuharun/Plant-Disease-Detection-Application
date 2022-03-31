import 'package:flutter/material.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Strawberry/strawberry1.dart';




class strawberry extends StatefulWidget {
  const strawberry({Key? key}) : super(key: key);

  @override
  _strawberryState createState() => _strawberryState();
}

class _strawberryState extends State<strawberry> {
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
              "Strawberry",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 80.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => strawberryone()));
                },
                child: Text("Leaf scorch")),
            ],
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.png"), fit: BoxFit.cover)),
      )),
    ));
  }
}