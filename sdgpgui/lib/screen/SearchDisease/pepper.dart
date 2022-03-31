import 'package:flutter/material.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/pepper/pepper1.dart';




class pepper extends StatefulWidget {
  const pepper({Key? key}) : super(key: key);

  @override
  _pepperState createState() => _pepperState();
}

class _pepperState extends State<pepper> {
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
              "Pepper",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 80.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => pepperone()));
                },
                child: Text("Bell Bacterial Spot")),

            ],
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.png"), fit: BoxFit.cover)),
      )),
    ));
  }
}