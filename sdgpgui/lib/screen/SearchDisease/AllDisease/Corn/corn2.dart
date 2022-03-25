import 'package:flutter/material.dart';
class corntwo extends StatefulWidget {
  const corntwo({ Key? key }) : super(key: key);

  @override
  State<corntwo> createState() => _corntwoState();
}

class _corntwoState extends State<corntwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(  
            title: Text('Corn Common rust'),  
        ),  
        body:Padding(padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(child:  Center(  
          child: Column(  
            children: <Widget>[  
              Image.asset('assets/c2.png'),  

              SizedBox(
              height: 10.0,
            ),
              Text('About Disease',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(
              height: 10.0,
            ),

              Text(  
                  'Common rust frequently occurs in mid later summer. It rarely reaches levels that cause yield loss in commercial hybrids. It is most problematic during prolonged periods of cool, wet weather. Rust diseases are generally easy to identify by the appearance of brown pustules.',  
                  style: TextStyle(fontSize: 20.0),  
              ),

              SizedBox(
              height: 10.0,
            ),

              Text('Solutions',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),)
            ],  
          ),  
        ),  
),
        )
    );
  }
}