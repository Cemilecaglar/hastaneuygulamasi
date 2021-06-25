
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'Service/auth.dart';
import 'asistanlar.dart';
import 'hakkinda.dart';
import 'hastanemiz.dart';
//import 'hata.dart';
import 'iletisim.dart';
import 'menu.dart';
//import 'kayitol.dart';
import 'tibbikadromuz.dart';
import 'uzmandoktorlar.dart';



class Giris extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Konya Şehir Hastanesi",
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => AnaSayfa(),
        '/Menu': (context) => Menu(),
        '/tibbikadromuz': (context) => tibbiKadromuz(),
        '/uzmandoktorlar': (context) => uzmandoktorlar(),
        '/asistanlar': (context) => asistanlar(),
        '/hastanemiz': (context) => hastanemiz(),
        '/hakkinda': (context) => Hakkinda(),
        // '/hata': (context) => Hata(),
        // '/kayitol': (context) => RegisterPage(),
        '/iletisim': (context) => iletisim(),
        //   '/doktorekle':(context)=>DoktorEkle(),
      },
    );
  }
}


class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
                height: size.height ,
                width: size.width * 0.85,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 100,
                          spreadRadius: 2
                      )
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(radius: 60.0,
                          backgroundColor: Colors.black54,
                          backgroundImage: AssetImage('images/logo.jpg'),
                        ),
                        TextField(
                            controller: _emailController,
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: 'E-Mail',
                              prefixText: ' ',
                              hintStyle: TextStyle(color: Colors.black38),
                              focusColor: Colors.white,
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  )
                              ),
                            )
                        ),

                        TextField(
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                            cursorColor: Colors.black,
                            controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Şifre',
                              prefixText: ' ',
                              hintStyle: TextStyle(
                                color: Colors.black38,
                              ),
                              focusColor: Colors.blueGrey,
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  )
                              ),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  )
                              ),
                            )),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        InkWell(
                          onTap:(){
                            _authService
                                .signIn(
                                _emailController.text,_passwordController.text)
                                .then((value)   {
                              return Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context)=>Menu()));
                            });

                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black45, width: 2),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5))),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Center(
                                  child: Text("Giriş Yap",
                                    style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 20,
                                    ),
                                  )
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        InkWell(
                          onTap:(){
                            /*Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder:(context)=>RegisterPage()));
                         */ },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black45, width: 2),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5))),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Center(
                                  child: Text("Kayıt Ol",
                                    style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 20,
                                    ),
                                  )
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
            ),
          ),
        ));
  }
}