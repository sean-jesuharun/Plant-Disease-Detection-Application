import 'package:flutter/material.dart';

class grapethree extends StatefulWidget {
  const grapethree({ Key? key }) : super(key: key);

  @override
  State<grapethree> createState() => _grapethreeState();
}

class _grapethreeState extends State<grapethree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(  
            title: Text('Grape Leaf blight'),  
        ),  
        body:Padding(padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(child:  Center(  
          child: Column(  
            children: <Widget>[  
              Image.asset('assets/g3.jpg'),  

              SizedBox(
              height: 10.0,
            ),
              Text('About Disease',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(
              height: 10.0,
            ),

              Text(  
                  'The yellow-green disease spots gradually appear on the fronts of the grape leaves with downy mildew, and white frosty mildew appears on the backs of the leaves. Leaf blight produces dark brown patches on the surface of grape leaves.',  
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
                'Only source high health status preferably certified plant material from reliable and accredited suppliers. Check your vineyard frequently for the presence of new pests and investigate any sick grapevines for unusual symptoms. Make sure you are familiar with common grapevine pests so you can tell if you see something different.Keep records of anything unusual',  
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