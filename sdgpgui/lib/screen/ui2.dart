import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Corn/corn1.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Corn/corn2.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Corn/corn3.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Grape/grape1.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Grape/grape2.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Grape/grape3.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Pepper/pepper1.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Potato/potato1.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Potato/potato2.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Strawberry/strawberry1.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Tomato/tomato1.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Tomato/tomato2.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Tomato/tomato3.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Tomato/tomato4.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Tomato/tomato5.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Tomato/tomato6.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Tomato/tomato7.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Tomato/tomato8.dart';
import 'package:sdgpgui/screen/SearchDisease/AllDisease/Tomato/tomato9.dart';
import 'package:sdgpgui/screen/disease.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http ;


class uitwo extends StatefulWidget {
  const uitwo({ Key? key }) : super(key: key);

  @override
  _uitwoState createState() => _uitwoState();
}

class _uitwoState extends State<uitwo> {

//Method to send pic to back end 
  String? message = "";

  uploadImage(var selectedImage) async{
    final request = http.MultipartRequest("POST", Uri.parse("http://192.168.1.2:4000/upload"));

    final headers = {"Content-type": "multipart/form-data"};

    request.files.add(
      http.MultipartFile('image', selectedImage!.readAsBytes().asStream(),selectedImage!.lengthSync(), filename: selectedImage!.path.split("/").last ));

      request.headers.addAll(headers);
      final response = await request.send();
      http.Response res = await http.Response.fromStream(response);
      final resJson = res.body;
      message = resJson;
      print(message);
      return message;
      
  }

  @override
  Widget build(BuildContext context) {
    var Imagepic=ImagePicker();

    Map pages={'0':cornone(), '1':corntwo(), '3':cornthree(), '4':grapeone(), '5':grapetwo(), '7':grapethree, '8':pepperone(),
    '10':potatoone(), '12':potatotwo(), '14':strawberryone(), '15':tomatoone(), '16':tomatotwo(), '18':tomatothree(), '19':tomatofour(), '20':tomatofive(),
    '21':tomatosix(), '22':tomatosevene(), '23':tomatoeight(), '24':tomatonine()};

    MediaQueryData size =MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(title: Text("Back"),),
      body: SafeArea(child:Container(
      height: size.size.height,
      width: size.size.width,
      child: Column(
        children: [
          SizedBox(height: 50.0,),
          Text("DetecXster",style: TextStyle(fontSize: 30,color: Colors.white),),
          SizedBox(height: 80.0,),
          ElevatedButton(onPressed: ()async{
            var image=await Imagepic.pickImage(source: ImageSource.camera);

            var cropped=await ImageCropper().cropImage(sourcePath: image!.path, aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1),compressQuality: 100,maxHeight: 700,maxWidth: 700,); 
            dynamic result=await uploadImage(cropped);
            
            Navigator.push(context, MaterialPageRoute(builder:(context)=>pages[result] ));

          }, child:Text("  Take Picture  ")),


          SizedBox(height: 30.0,),

          ElevatedButton(onPressed: ()async{
            var image=await Imagepic.pickImage(source: ImageSource.gallery);
            File upload=File(image!.path);
            dynamic result =await uploadImage(upload);
            
            
            Navigator.push(context, MaterialPageRoute(builder:(context)=>pages[result] ));
            
            
          
          }, child:Text(" Select Picture ")),


          SizedBox(height: 30.0,),

          ElevatedButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context) => disease()));}, 
          child:Text("     Diseases      ")),

        ],
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/background.png"
          ),
          fit: BoxFit.cover
        )
      ),
    ),)
      
    );
  }
}