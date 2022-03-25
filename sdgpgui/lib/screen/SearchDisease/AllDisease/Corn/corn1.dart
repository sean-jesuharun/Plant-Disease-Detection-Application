import 'package:flutter/material.dart';

class cornone extends StatefulWidget {
  const cornone({ Key? key }) : super(key: key);

  @override
  State<cornone> createState() => _cornoneState();
}

class _cornoneState extends State<cornone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(  
            title: Text('Corn Cercospora leaf spot'),  
        ),  
        body:Padding(padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(child:  Center(  
          child: Column(  
            children: <Widget>[  
              Image.asset('assets/c1.png'),  

              SizedBox(
              height: 10.0,
            ),
              Text('About Disease',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(
              height: 10.0,
            ),

              Text(  
                  'Cercospora leaf spot is a foliar fungal disease that affects Corn world wide. Also considered as one of the most significant yield-limiting diseases of corn',  
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
                'Disease management tactics include using resistant corn hybrids, conventional tillage where appropriate, and crop rotation. Foliar fungicides can be effective if economically warranted. Typically they are only profitable on susceptible inbreds or susceptible hybrids under a combination of high risk conditions with high yield potential, prolonged humid conditions, and evidence of disease development.',  
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