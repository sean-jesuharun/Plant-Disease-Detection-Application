import 'package:flutter/material.dart';

class tomatonine extends StatefulWidget {
  const tomatonine({ Key? key }) : super(key: key);

  @override
  State<tomatonine> createState() => _tomatonineState();
}

class _tomatonineState extends State<tomatonine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(  
            title: Text('Tomato Yellow Leaf Curl Virus'),  
        ),  
        body:Padding(padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(child:  Center(  
          child: Column(  
            children: <Widget>[  
              Image.asset('assets/t9.jpg'),  

              SizedBox(
              height: 10.0,
            ),
              Text('About Disease',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(
              height: 10.0,
            ),

              Text(  
                  'Tomato yellow leaf curl virus is a species in the genus Begomovirus and family Geminiviridae. Tomato yellow leaf curl virus (TYLCV) infection induces severe symptoms on tomato plants and causes serious yield losses worldwide. TYLCV is persistently transmitted by the sweetpotato whitefly, Bemisia tabaci (Gennadius).',  
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
                'symptomatic plants should be carefully covered by a clear or black plastic bag and tied at the stem at soil line. Cut off the plant below the bag and allow bag with plant and whiteflies to desiccate to death on the soil surface for 1-2 days prior to placing the plant in the trash. Do not cut the plant off or pull it out of the garden and toss it on the compost! The goal is to remove the plant reservoir of virus from the garden and to trap the existing virus-bearing whiteflies so they do not disperse onto other tomatoes.If symptomatic plants have no obvious whiteflies on the lower leaf surface, these plants can be cut from the garden and BURIED in the compost.',  
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