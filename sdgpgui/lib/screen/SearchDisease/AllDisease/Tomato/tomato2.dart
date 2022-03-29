import 'package:flutter/material.dart';

class tomatotwo extends StatefulWidget {
  const tomatotwo({ Key? key }) : super(key: key);

  @override
  State<tomatotwo> createState() => _tomatotwoState();
}

class _tomatotwoState extends State<tomatotwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(  
            title: Text('Tomato Early blight'),  
        ),  
        body:Padding(padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(child:  Center(  
          child: Column(  
            children: <Widget>[  
              Image.asset('assets/t2.jpeg'),  

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
                'Cover the soil under the plants with mulch, such as fabric, straw, plastic mulch, or dried leaves. Water at the base of each plant, using drip irrigation, a soaker hose, or careful hand watering.Increase airflow by staking or trellising, removing weeds, and spacing plants adequately apartPruning the bottom leaves can also prevent early blight spores from splashing up from the soil onto leaves. Let two years pass before you plant tomatoes or peppers in the same location',  
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