import 'package:flutter/material.dart';

class tomatosevene extends StatefulWidget {
  const tomatosevene({ Key? key }) : super(key: key);

  @override
  State<tomatosevene> createState() => _tomatoseveneState();
}

class _tomatoseveneState extends State<tomatosevene> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(  
            title: Text('Tomato Target Spot'),  
        ),  
        body:Padding(padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(child:  Center(  
          child: Column(  
            children: <Widget>[  
              Image.asset('assets/t7.jpg'),  

              SizedBox(
              height: 10.0,
            ),
              Text('About Disease',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(
              height: 10.0,
            ),

              Text(  
                  'Also known as early blight, target spot of tomato is a fungal disease that attacks a diverse assortment of plants, including papaya, peppers, snap beans, potatoes, cantaloupe, and squash as well as passion flower and certain ornamentals.',  
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
                'Remove old plant debris at the end of the growing season; otherwise, the spores will travel from debris to newly planted tomatoes in the following growing season, thus beginning the disease anew. Dispose of the debris properly and don’t place it on your compost pile unless you’re sure your compost gets hot enough to kill the spores. Rotate crops and don’t plant tomatoes in areas where other disease-prone plants have been located in the past year– primarily eggplant, peppers, potatoes or, of course– tomatoes. Rutgers University Extension recommends a three year rotation cycle to reduce soil-borne fungi.',  
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