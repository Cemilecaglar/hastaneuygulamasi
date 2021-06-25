import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){
  runApp(iletisim(),
  );
}

class iletisim extends StatelessWidget {
  void customLaunch(command)async{
    if(await canLaunch(command))
    {
      await launch(command);
    }
    else
    {
      print("$command bulunamadı!");
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:ThemeData(fontFamily: 'Calibri'),
        home:Scaffold(
          body:SafeArea(
            child:Center(
              child:Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  CircleAvatar(radius: 70.0,
                    backgroundColor: Colors.black54,
                    backgroundImage: AssetImage('images/logo.jpg'),
                  ),
                  Text(' Adana Çevre Yolu Karatay/KONYA',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize:30,
                      color:Colors.black54,
                    ),
                  ),
                  Divider(height:10),
                  InkWell(
                    onTap: (){
                      customLaunch("mailto:konyash@saglik.gov.tr");
                    },
                    child:Container(
                        margin:EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        color:Colors.black12,
                        child:ListTile(leading:Icon(
                          Icons.email,
                          size:30,
                          color:Colors.black87,
                        ),title:Text('konyash@saglik.gov.tr',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color:Colors.black54,
                            fontWeight:FontWeight.w800,
                            fontSize: 23,
                          ),
                        ),)
                    ),
                  ),
                  SizedBox(height:10,),
                  InkWell(
                    onTap: (){
                      customLaunch("tel:0 (332) 310 50 00");
                    },
                    child:Container(
                        margin:EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        color:Colors.black12,
                        child:ListTile(leading:Icon(
                          Icons.phone,
                          size:30,
                          color:Colors.black87,
                        ),title:Text('0 (332) 310 50 00',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color:Colors.black54,
                            fontWeight:FontWeight.w800,
                            fontSize: 23,
                          ),
                        ),)
                    ),
                  ),
                  SizedBox(height:10,),
                  Container(
                      margin:EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      color:Colors.black12,
                      child: ListTile(leading:Icon(
                        Icons.print,
                        size:30,
                        color:Colors.black87,
                      ),title:Text('0 (332) 310 54 98',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color:Colors.black54,
                          fontWeight:FontWeight.w800,
                          fontSize: 23,
                        ),
                      ),)
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
