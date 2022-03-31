import 'package:flutter/material.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Potato/potato1.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Potato/potato2.dart';




class potato extends StatefulWidget {
  const potato({Key? key}) : super(key: key);

  @override
  _potatoState createState() => _potatoState();
}

class _potatoState extends State<potato> {
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
              "Potato",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 80.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => potatoone()));
                },
                child: Text("Early blight")),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => potatotwo()));
                },
                child: Text("Late blight ")),

            ],
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.png"), fit: BoxFit.cover)),
      )),
    ));
  }
}