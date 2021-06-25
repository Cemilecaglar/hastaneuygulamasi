import 'package:flutter/material.dart';

void main(){
  runApp(hastanemiz());
}
class hastanemiz extends StatefulWidget {
  @override
  _hastanemizState createState() => _hastanemizState();
}

class _hastanemizState extends State<hastanemiz> {
  int resimNo=2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          backgroundColor:Color(0xFFff9800),
          centerTitle:true,
          title:Text('HASTANEMİZ',
            style: TextStyle(
              color: Colors.black54,
              fontWeight:FontWeight.w800,
              letterSpacing: 0.5,
              fontSize: 40,
            ),
          ),
        ),
        body:Center(

          child:Image(
              image:AssetImage('images/resim$resimNo.jpg')),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState((){
              resimNo=resimNo+1;
              if(resimNo==9){
                resimNo=1;
              }
            }
            );
          },
          child:Text('Sonraki'),
          backgroundColor: Color(0xFFFF9800),
        ),
      ),
    );
  }
}


