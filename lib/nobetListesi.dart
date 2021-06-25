import 'package:flutter/material.dart';
void main(){
  runApp(NobetListesi());
}


class NobetListesi extends StatefulWidget {
  @override
  _NobetListesiState createState() => _NobetListesiState();
}

class _NobetListesiState extends State<NobetListesi> {
  final bolumler=['03.05.2021 Pazartesi'
    ,'04.05.2021 Salı','05.04.2021 Çarşamba','06.04.2021 Perşembe','07.04.2021 Cuma','08.04.2021 Cumartesi','09.04.2021 Pazar'];
  final hemsire1=['Elif Gökçe','Ayşenur Sarı','Selma Demirci','Fikriye Yalçın','Beyza Kaya','Nisa Günalan','Zehra Boncuk'];
  final hemsire2=['Fatma Altın','Dilek Turgut','Gamze Yaşar','Esma Yıldız','Betül Güneş','Ayşegül Yıldırım','Sevde Karahan'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Nöbet Listesi'),
        centerTitle: true,
        backgroundColor: Color(0xFFFF9800),
      ),
      body:GridView.builder(
        itemCount:bolumler.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 30.0,
          mainAxisSpacing: 30.0,
        ),
        itemBuilder:(BuildContext context,int index){
          return Container(color:Colors.black26,
            child:Center(
                child:Text(bolumler[index] +'=> Hemşire '+hemsire1[index] + ' ve '+' Hemşire '+hemsire2[index])),
          ) ;
        },
      ),
    );
  }
}

