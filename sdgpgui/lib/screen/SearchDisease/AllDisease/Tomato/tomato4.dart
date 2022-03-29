import 'package:flutter/material.dart';

class tomatofour extends StatefulWidget {
  const tomatofour({ Key? key }) : super(key: key);

  @override
  State<tomatofour> createState() => _tomatofourState();
}

class _tomatofourState extends State<tomatofour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(  
            title: Text('Tomato Leaf Mold'),  
        ),  
        body:Padding(padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(child:  Center(  
          child: Column(  
            children: <Widget>[  
              Image.asset('assets/t4.jpg'),  

              SizedBox(
              height: 10.0,
            ),
              Text('About Disease',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(
              height: 10.0,
            ),

              Text(  
                  'Cladosporium fulvum is an Ascomycete called Passalora fulva, a non-obligate pathogen that causes the disease on tomato known as the tomato leaf mold. P. fulva only attacks tomato plants, especially the foliage, and it is a common disease in greenhouses, but can also occur in the field.',  
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
                'Limiting the relative humidity in the hoophouse can help to prevent this disease. Vent, if possible, to promote air movement. Increase plant spacing, remove weeds, and prune and trellis plants. Consider using drip irrigation to minimize leaf wetness. If watering overhead, irrigate in the morning so foliage can dry quickly.',  
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