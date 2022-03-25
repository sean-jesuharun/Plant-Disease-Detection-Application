import 'package:flutter/material.dart';

class cornthree extends StatefulWidget {
  const cornthree({ Key? key }) : super(key: key);

  @override
  State<cornthree> createState() => _cornthreeState();
}

class _cornthreeState extends State<cornthree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(  
            title: Text('Corn Northern Leaf Blight'),  
        ),  
        body:Padding(padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(child:  Center(  
          child: Column(  
            children: <Widget>[  
              Image.asset('assets/c3.png'),  

              SizedBox(
              height: 10.0,
            ),
              Text('About Disease',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(
              height: 10.0,
            ),

              Text(  
                  'Northern corn leaf blight (NCLB) or Turcicum leaf blight (TLB) is a foliar disease of corn (maize) caused by Exserohilum turcicum.The disease is most prevalent during moderate temperatures (64 to 80 degrees F) with prolonged periods of moisture. It typically appears at or after silking, but the disease is usually more severe when infection occurs earlier.',  
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
                'Use resistant hybrids. Fungicides may be warranted on inbreds for seed production during the early stages of this disease. Crop rotation and tillage practices may be helpful in some cases.',  
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