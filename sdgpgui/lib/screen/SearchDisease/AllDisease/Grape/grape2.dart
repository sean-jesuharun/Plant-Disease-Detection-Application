import 'package:flutter/material.dart';

class grapetwo extends StatefulWidget {
  const grapetwo({ Key? key }) : super(key: key);

  @override
  State<grapetwo> createState() => _grapetwoState();
}

class _grapetwoState extends State<grapetwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(  
            title: Text('Grape Esca'),  
        ),  
        body:Padding(padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(child:  Center(  
          child: Column(  
            children: <Widget>[  
              Image.asset('assets/g2.jpg'),  

              SizedBox(
              height: 10.0,
            ),
              Text('About Disease',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(
              height: 10.0,
            ),

              Text(  
                  'Esca, Botryosphaeria dieback, Eutypa dieback, and Phomopsis dieback make up a complex of "trunk diseases" caused by different wood-infecting fungi. The foliar symptom of Esca is an interveinal "striping". The "stripes", which start out as dark red in red cultivars and yellow in white cultivars, dry and become necrotic.',  
                  style: TextStyle(fontSize: 20.0),  
              ),

              SizedBox(
              height: 10.0,
            ),

              Text('Solutions',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),)
            ],  
          ),  
        ),  
),
        )
    );
  }
}