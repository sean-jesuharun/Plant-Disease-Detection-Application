import 'package:flutter/material.dart';

class potatotwo extends StatefulWidget {
  const potatotwo({ Key? key }) : super(key: key);

  @override
  State<potatotwo> createState() => _potatotwoState();
}

class _potatotwoState extends State<potatotwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(  
            title: Text('Potato Late blight'),  
        ),  
        body:Padding(padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(child:  Center(  
          child: Column(  
            children: <Widget>[  
              Image.asset('assets/pt2.jpg'),  

              SizedBox(
              height: 10.0,
            ),
              Text('About Disease',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(
              height: 10.0,
            ),

              Text(  
                  'Late blight is a potentially devastating disease of potato, infecting leaves, stems and potato tubers. The disease spreads quickly in fields and can result in total crop failure if untreated.',  
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
                'Destroy all cull and volunteer potatoes.Plant late blight-free seed tubers.Do not mix seed lots because cutting can transmit late blight.Use a seed piece fungicide treatment labeled for control of late blightAvoid planting problem areas that may remain wet for extended periods or may be difficult to sprayAvoid excessive and/or nighttime irrigation.',  
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