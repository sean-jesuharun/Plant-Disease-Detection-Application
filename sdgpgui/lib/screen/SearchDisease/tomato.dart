import 'package:flutter/material.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Tomato/tomato1.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Tomato/tomato2.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Tomato/tomato3.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Tomato/tomato4.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Tomato/tomato5.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Tomato/tomato6.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Tomato/tomato7.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Tomato/tomato8.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Tomato/tomato9.dart';




class tomato extends StatefulWidget {
  const tomato({Key? key}) : super(key: key);

  @override
  _tomatoState createState() => _tomatoState();
}

class _tomatoState extends State<tomato> {
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
              "Tomato",
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
                      MaterialPageRoute(builder: (context) => tomatoone()));
            }, child: Text("  Bacterial spot  ")),

            ElevatedButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context) => tomatotwo()));}, child: Text("   Early blight   ")),
            
          ],),

          SizedBox(
              height: 30.0,
            ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                      MaterialPageRoute(builder: (context) => tomatothree()));
            }, child: Text("   Late blight    ")),
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                      MaterialPageRoute(builder: (context) => tomatofour()));
            }, child: Text("     Leaf Mold    ")),
            
          ],),

          SizedBox(
              height: 30.0,
            ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                      MaterialPageRoute(builder: (context) => tomatofive()));
            }, child: Text("Septoria leaf spot")),
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                      MaterialPageRoute(builder: (context) => tomatosix()));
            }, child: Text("   Spider mites   ")),
            
          ],),

          SizedBox(
              height: 30.0,
            ),

            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                      MaterialPageRoute(builder: (context) => tomatosevene()));
            }, child: Text("    Target Spot   ")),
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                      MaterialPageRoute(builder: (context) => tomatoeight()));
            }, child: Text("   Mosaic virus   ")),
            
          ],),

          SizedBox(
              height: 30.0,
            ),

            ElevatedButton(onPressed: (){
              Navigator.push(context,
                      MaterialPageRoute(builder: (context) => tomatonine()));
            }, child: Text("Yellow Leaf Curl Virus")),
            
            

            
            ],
            
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.png"), fit: BoxFit.cover)),
      )),
    ));
  }
}