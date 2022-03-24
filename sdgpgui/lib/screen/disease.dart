import 'package:flutter/material.dart';
import 'package:sdgpgui/screen/SearchDisease/corn.dart';
import 'package:sdgpgui/screen/SearchDisease/grape.dart';
import 'package:sdgpgui/screen/SearchDisease/pepper.dart';
import 'package:sdgpgui/screen/SearchDisease/potato.dart';
import 'package:sdgpgui/screen/SearchDisease/strawberry.dart';
import 'package:sdgpgui/screen/SearchDisease/tomato.dart';



class disease extends StatefulWidget {
  const disease({Key? key}) : super(key: key);

  @override
  _diseaseState createState() => _diseaseState();
}

class _diseaseState extends State<disease> {
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
              "Diseases",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 60.0,
            ),

            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                      MaterialPageRoute(builder: (context) => corn()));
            }, child: Text("   Corn   ")),

            ElevatedButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context) => grape()));}, child: Text("   Grape  ")),
            
          ],),

          SizedBox(
              height: 30.0,
            ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                      MaterialPageRoute(builder: (context) => pepper()));
            }, child: Text("  Pepper  ")),
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                      MaterialPageRoute(builder: (context) => potato()));
            }, child: Text("  Potato  ")),
            
          ],),

          SizedBox(
              height: 30.0,
            ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                      MaterialPageRoute(builder: (context) => strawberry()));
            }, child: Text("Strawberry")),
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                      MaterialPageRoute(builder: (context) => tomato()));
            }, child: Text("  Tomato  ")),
            
          ],),


            

            
            ],
            
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.png"), fit: BoxFit.cover)),
      )),
    ));
  }
}