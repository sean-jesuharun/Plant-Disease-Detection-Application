import 'package:flutter/material.dart';
import 'package:sdgpgui/screen/signin.dart';
import 'package:sdgpgui/screen/ui2.dart';

class uione extends StatefulWidget {
  const uione({Key? key}) : super(key: key);

  @override
  _uioneState createState() => _uioneState();
}

class _uioneState extends State<uione> {
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
              "DetecXster",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 80.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => uitwo()));
                },
                child: Text("Use As Guest")),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signin()));
                },
                child: Text("      Sign in      ")),
          ],
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.png"), fit: BoxFit.cover)),
      )),
    ));
  }
}
