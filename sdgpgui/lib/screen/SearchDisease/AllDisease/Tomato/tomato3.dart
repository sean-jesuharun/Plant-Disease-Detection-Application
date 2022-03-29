import 'package:flutter/material.dart';

class tomatothree extends StatefulWidget {
  const tomatothree({ Key? key }) : super(key: key);

  @override
  State<tomatothree> createState() => _tomatothreeState();
}

class _tomatothreeState extends State<tomatothree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(  
            title: Text('Tomato Late blight'),  
        ),  
        body:Padding(padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(child:  Center(  
          child: Column(  
            children: <Widget>[  
              Image.asset('assets/t3.jpg'),  

              SizedBox(
              height: 10.0,
            ),
              Text('About Disease',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(
              height: 10.0,
            ),

              Text(  
                  'Late blight is a potentially devastating disease of tomato and potato, infecting leaves, stems, tomato fruit, and potato tubers. The disease spreads quickly in fields and can result in total crop failure if untreated. Late blight does not occur every year in Minnesota.',  
                  style: TextStyle(fontSize: 20.0),  
              ),

              SizedBox(
              height: 10.0,
            ),

              Text('Solutions',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),),
              SizedBox(
              height: 10.0,
              ),

              Text(
                'Plant tomatoes where no tomatoes, potatoes, peppers or eggplants have been for the past 3-4 years.Keep leaves as dry as possible.Water with drip irrigation or a soaker hose.Water in the morning so leaves dry quickly in the sun.Stake or cage plants.Space plants so that air flows between them.Remove or bury plants at the end of the season. Manage cull piles so culls break down over winter.',  
                style: TextStyle(fontSize: 20.0),  
              )
            ],  
          ),  
        ),  
),
        )
    );
  }
}