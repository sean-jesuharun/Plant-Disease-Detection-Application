import 'package:flutter/material.dart';

class potatoone extends StatefulWidget {
  const potatoone({ Key? key }) : super(key: key);

  @override
  State<potatoone> createState() => _potatooneState();
}

class _potatooneState extends State<potatoone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(  
            title: Text('Potato Early blight'),  
        ),  
        body:Padding(padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(child:  Center(  
          child: Column(  
            children: <Widget>[  
              Image.asset('assets/pt1.jpg'),  

              SizedBox(
              height: 10.0,
            ),
              Text('About Disease',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(
              height: 10.0,
            ),

              Text(  
                  'Alternaria solani is a fungal pathogen that produces a disease in tomato and potato plants called early blight. The pathogen produces distinctive "bullseye" patterned leaf spots and can also cause stem lesions and fruit rot on tomato and tuber blight on potato.',  
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
                'Select a late-season variety with a lower susceptibility to early blight.Resistance is associated with plant maturity and early maturing cultivars are more susceptible.Time irrigation to minimize leaf wetness duration during cloudy weather and allow sufficient time for leaves to dry prior to nightfall.Avoid nitrogen and phosphorus deficiency.Scout filds regularly for infection beginning after plants reach 12 inches in height. Pay particular attention to edges of fields that are adjacent to fields planted to potato the previous year.Rotate foliar fungicides',  
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