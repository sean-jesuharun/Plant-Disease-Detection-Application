import 'package:flutter/material.dart';
import 'package:sdgpgui/screen/signup.dart';
import 'package:sdgpgui/screen/ui2.dart';

class signin extends StatefulWidget {
  const signin({ Key? key }) : super(key: key);

  @override
  _signinState createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData size =MediaQuery.of(context);
    return Scaffold( appBar: AppBar(title: Text("Back"),),
    body: SafeArea(child: SingleChildScrollView(child: Container( 
      padding: EdgeInsets.all(16.0),
      color: Colors.black,
      height: size.size.height,
      width: size.size.width,
      child: Column(
        children: [
          SizedBox(height: 20.0,),
          Text("DetecXster",style: TextStyle(fontSize: 30,color: Colors.white),),
          SizedBox(height: 20.0,),
          Icon(Icons.account_circle,color: Colors.white,size: 50.0,),
          SizedBox(height: 20.0,),
          TextField(decoration: InputDecoration(fillColor: Colors.white, filled: true,hintText: 'Email'),),
          SizedBox(height: 20.0,),
          TextField(decoration: InputDecoration(fillColor: Colors.white, filled: true,hintText: 'Password'),obscureText: true,),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>uitwo()));
            }, child: Text(" Login ")),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>signup()));
            }, child: Text("Sign Up")),
          ],)
        ],
      ),
    ),)),
    
      
    );
  }
}

