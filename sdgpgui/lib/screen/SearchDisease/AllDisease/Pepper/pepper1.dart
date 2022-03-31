import 'package:flutter/material.dart';

class pepperone extends StatefulWidget {
  const pepperone({ Key? key }) : super(key: key);

  @override
  State<pepperone> createState() => _pepperoneState();
}

class _pepperoneState extends State<pepperone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(  
            title: Text('Pepper Bell Bacterial spot'),  
        ),  
        body:Padding(padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(child:  Center(  
          child: Column(  
            children: <Widget>[  
              Image.asset('assets/p1.jpg'),  

              SizedBox(
              height: 10.0,
            ),
              Text('About Disease',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(
              height: 10.0,
            ),

              Text(  
                  'Bacterial spot is one of the most devastating diseases of pepper and tomato. The disease occurs worldwide where pepper and tomato are grown in warm, moist areas. When it occurs soon after transplanting and weather conditions remain favorable for disease development, the results are usually total crop loss.',  
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
                'he primary management strategy of bacterial spot begins with use of certified pathogen-free seed and disease-free transplants. The bacteria do not survive well once host material has decayed, so crop rotation is recommended. Once the bacteria are introduced into a field or greenhouse, the disease is very difficult to control.Pepper plants are routinely sprayed with copper-containing bactericides to maintain a protective cover on the foliage and fruit. Strains of the pathogen resistant to copper and/or streptomycin are fairly common and can be detected by plating bacteria on media containing these compounds . Genes encoding resistance to copper and streptomycin can be borne on plasmids  contained in the bacterial cells. The presence of these genes on plasmids allows for the rapid spread of resistance to other non-resistant bacteria.',  
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