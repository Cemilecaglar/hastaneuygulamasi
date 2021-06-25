import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'package:flutter/src/painting/alignment.dart';
void main() {
  runApp(Hakkinda());
}
class Hakkinda extends StatefulWidget {
  @override
  _HakkindaState createState() => _HakkindaState();
}

class _HakkindaState extends State<Hakkinda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar:AppBar(
          title:Text('Hakkında'),
          backgroundColor: Color(0xFFFF9800),
        ),
        body:Center(
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Konya Şehir Hastanesi Mobil Uygulaması',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Calibri',
                          fontSize:20
                      )),
                  Text('Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR'
                      ' tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA'
                      ' dersi kapsamında 183311068 numaralı Cemile ÇAĞLAR'
                      ' tarafından 30 Nisan 2021 günü yapılmıştır.'
                    ,textAlign: TextAlign.justify,
                  ),
                  Padding(padding:const EdgeInsets.symmetric(vertical:16.0),
                  )
                ],
              ),
            )
        )
    );
  }
}
