import 'package:flutter/material.dart';

class tomatosix extends StatefulWidget {
  const tomatosix({ Key? key }) : super(key: key);

  @override
  State<tomatosix> createState() => _tomatosixState();
}

class _tomatosixState extends State<tomatosix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(  
            title: Text('Tomato Spider mites'),  
        ),  
        body:Padding(padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(child:  Center(  
          child: Column(  
            children: <Widget>[  
              Image.asset('assets/t6.jpg'),  

              SizedBox(
              height: 10.0,
            ),
              Text('About Disease',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(
              height: 10.0,
            ),

              Text(  
                  'The tomato red spider mites are pale-orange to red and feed on the underside of leaves. They cannot be seen easily with the naked eye. Feeding damage caused by sucking sap appears as many shiny pale yellow marks on the top of the tomato leaf (see lower photo). Eventually the leaves turn brown and die or fall off.',  
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
                'Avoid continuous cropping of tomato and related plants which makes it difficult to control red spider mites, since they always have a plant to feed on.Remove remains from a previous crop and destroy before planting new crop.Before transferring sticks from an infested field to another, wash with soap and water and dry properly under direct sun for a week to avoid transfer of mites. Do the same for twines in the greenhouse.',  
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