

import 'package:flutter/material.dart';

void main(){
  runApp(DoktorEkle());
}
class DoktorEkle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:" Doktor Ekle",
      home:Ekle(),
    );
  }
}
class Ekle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Doktor Ekle"),
        
      ),
        body:AnaEkran(),
    );
  }
}
class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  TextEditingController t1=TextEditingController();
  List doktorListesi=[];

  doktorEkle(){
    setState((){
     doktorListesi.add(t1.text);
    t1.clear();
    }
    );
  }
  doktorCikar(){
    setState((){
      doktorListesi.remove(t1.text);
      t1.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:<Widget>[
          Flexible(
            child:ListView.builder(
              itemCount: doktorListesi.length,
              itemBuilder:(context,indeksNumarasi)=>ListTile(
                subtitle:Text("Doktor Listesi"),
                title:Text(doktorListesi[indeksNumarasi]),
              ),
            ),
          ),
          TextField(controller:t1,),
          RaisedButton(
            onPressed:doktorEkle,
            child:Text("Ekle"),
          ),
          RaisedButton(
            onPressed:doktorCikar,
            child:Text("Çıkar"),
          )
        ]
      )
    );
  }
}


