import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({ Key? key }) : super(key: key);

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
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
          TextField(decoration: InputDecoration(fillColor: Colors.white, filled: true,hintText: 'Full Name'),),
          SizedBox(height: 20.0,),
          TextField(decoration: InputDecoration(fillColor: Colors.white, filled: true,hintText: 'Email Address'),),
          SizedBox(height: 20.0,),
          TextField(decoration: InputDecoration(fillColor: Colors.white, filled: true,hintText: 'Password'),obscureText: true,),
          SizedBox(height: 20.0,),
          TextField(decoration: InputDecoration(fillColor: Colors.white, filled: true,hintText: 'Confirm Password'),obscureText: true,),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          
            ElevatedButton(onPressed: (){}, child: Text("Create Account")),
            ElevatedButton(onPressed: (){}, child: Text("Login")),
            
          ],)
        ],
      ),
    ),)),
    
      
    );
  }
}