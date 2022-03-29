import 'package:flutter/material.dart';

class tomatoone extends StatefulWidget {
  const tomatoone({ Key? key }) : super(key: key);

  @override
  State<tomatoone> createState() => _tomatooneState();
}

class _tomatooneState extends State<tomatoone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(  
            title: Text('Tomato Bacterial spot'),  
        ),  
        body:Padding(padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(child:  Center(  
          child: Column(  
            children: <Widget>[  
              Image.asset('assets/t1.jpg'),  

              SizedBox(
              height: 10.0,
            ),
              Text('About Disease',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(
              height: 10.0,
            ),

              Text(  
                  'Bacterial spot of tomato is caused by Xanthomonas vesicatoria, Xanthomonas euvesicatoria, Xanthomonas gardneri, and Xanthomonas perforans. These bacterial pathogens can be introduced into a garden on contaminated seed and transplants, which may or may not show symptoms.',  
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
                'A plant with bacterial spot cannot be cured.  Remove symptomatic plants from the field or greenhouse to prevent the spread of bacteria to healthy plants.  Burn, bury or hot compost the affected plants and DO NOT eat symptomatic fruit.  Although bacterial spot pathogens are not human pathogens, the fruit blemishes that they cause can provide entry points for human pathogens that could cause illness.',  
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