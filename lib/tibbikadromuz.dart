import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';


void main(){
  runApp(tibbiKadromuz());
}
class tibbiKadromuz extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(fontFamily: 'Calibri'),
      home:Scaffold(
        appBar: AppBar( centerTitle: true,
          backgroundColor:Color(0xFFff9800) ,
          title: Text('Tıbbi Kadromuz',
            textAlign: TextAlign.center,
            style:TextStyle(
              color: Colors.black45,
              fontWeight:FontWeight.w800,
              fontSize: 30,
            ),
          ),
        ),
        body:new Center(
          child:new GridView.count(
            primary:false,
            crossAxisSpacing:10.0,
            crossAxisCount:1,
            children:<Widget>[
              new GestureDetector(
                  onTap:() =>Navigator.pushNamed(context, '/uzmandoktorlar',arguments: {}),
                child: Container(
                  color:Colors.brown.shade200,
                  margin:EdgeInsets.only(left:20,right:20,bottom:10,top:10),
                  alignment: Alignment.center,
                  child:new Text("Uzman Doktorlar",
                    textAlign:TextAlign.center,
                    style:TextStyle(color:Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize:35,
                    ),
                  ),),
              ),
              new GestureDetector(
                  onTap:() =>Navigator.pushNamed(context, '/asistanlar',arguments: {}),
                child:Container(
                  color:Colors.brown.shade200,
                  margin:EdgeInsets.only(left:20,right:20,bottom:10,top:0.1),
                  alignment: Alignment.center,
                  child:new Text("Asistanlar",
                      textAlign:TextAlign.center,
                      style:TextStyle(color:Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize:35,
                      )),
                ),)
            ],
          ),
        ),
      ),
    );

  }
}
