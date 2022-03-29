import 'package:flutter/material.dart';

class tomatoeight extends StatefulWidget {
  const tomatoeight({ Key? key }) : super(key: key);

  @override
  State<tomatoeight> createState() => _tomatoeightState();
}

class _tomatoeightState extends State<tomatoeight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(  
            title: Text('Tomato Mosaic virus'),  
        ),  
        body:Padding(padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(child:  Center(  
          child: Column(  
            children: <Widget>[  
              Image.asset('assets/t8.jpg'),  

              SizedBox(
              height: 10.0,
            ),
              Text('About Disease',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(
              height: 10.0,
            ),

              Text(  
                  'ToMV causes yellow mosaic symptoms on the leaves and tomato fruits. Tomato mosaic virus symptoms are seen as a general mottling or mosaic appearance on foliage. Light and darker green mosaic leaf mottle, sometimes with distortion of younger leaves; this is the most common reaction in summer in glasshouses.',  
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
                'A number of factors are responsible for reduction of tomato yields—lack of improved varieties, poor fruit setting due to bad climate conditions which limit pollination, and different diseases. ToMV, which is transmitted by human activities, seeds, leaf and root debris, causes great economic losses to farmers reducing the quality of tomato fruits. PVY, which is transmitted mainly with aphids, together with ToMV causes damages to tomato plants and fruits. In this regard, the demand for virus-resistant tomato varieties is of a paramount importance in reducing the damage caused by viruses. Petrov et al. demonstrated that tomato cultivars—Cherry, Bononia, Mila, and Heart of the Albeng had resistnace against PVY, confirmed by Touch down RT-PCR and ToMV resistance confirmed by DAS ELISA',  
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