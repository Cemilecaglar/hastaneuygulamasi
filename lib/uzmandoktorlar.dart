
import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Uzman Doktorlar',
          theme: ThemeData(
            primarySwatch: Colors.orange,
          ),
          home: uzmandoktorlar()
      )

  );
}

class bilgi {
  final String isim;
  final String brans;
  const bilgi({required this.isim, required this.brans});
}
const bilgiler = [
  bilgi(
      isim: 'Doç.Dr.Mehmet Demirci',
      brans:'Ağız ve Diş Sağlığı'
  ),
  bilgi(
      isim: 'Doç.Dr.Semih Kartal',
      brans:'Ağız ve Diş Sağlığı'
  ),
  bilgi(
      isim: 'Uzm.Dr.Mevlüt Kaya',
      brans:'Aile Hekimliği'
  ),
  bilgi(
      isim: 'Dr.Ali İhsan Şen',
      brans:'Aile Hekimliği'
  ),
  bilgi(
      isim: 'Dr.Yücel Sönmez',
      brans:'Beyin Sinir Cerrahisi'
  ),
  bilgi(
      isim: 'Uzm.Dr.Recep Solmaz',
      brans:'Beyin Sinir Cerrahisi'
  ),
  bilgi(
      isim: 'Uzm.Dr.Halime Vural',
      brans:'Çocuk Cerrahisi'
  ),
  bilgi(
      isim: 'Doç.Dr. Serdar Erten',
      brans:'Çocuk Cerrahisi'
  ),
  bilgi(
      isim: 'Dr.Abdullah Bakır',
      brans:'Çocuk Cerrahisi'
  ),
  bilgi(
      isim: 'Uzm.Dr.Esma Akbulut',
      brans:'Çocuk Cerrahisi'
  ),
  bilgi(
      isim: 'Dr.Ayşe Erkuran',
      brans:'Deri ve Zührevi Hastalıkları(Cildiye)'
  ),
  bilgi(
      isim: 'Doç.Dr.Filiz Günbahar',
      brans:'Fiziksel Tıp ve Rehabilitasyon'
  ),
  bilgi(
      isim: 'Uzm.Dr.Turgut Özcan',
      brans:'Genel Cerrahi'
  ),
  bilgi(
      isim: 'Doç.Dr.Serhat Bakır',
      brans:'Genel Cerrahi'
  ),
  bilgi(
      isim: 'Dr.Emel Coşar',
      brans:'Genel Cerrahi'
  ),
  bilgi(
      isim: 'Uzm.Dr.Aysel Gündoğdu',
      brans:'Göz Hastalıkları'
  ),
  bilgi(
      isim: 'Dr.Merve Şahin',
      brans:'İç Hastalıkları(Dahiliye)'
  ),
  bilgi(
      isim: 'Uzm.Dr.Deniz Fidancı',
      brans:'İç Hastalıkları(Dahiliye)'
  ),
  bilgi(
      isim: 'Doç.Dr.Mehmet Sözcü',
      brans:'Kalp ve Damar Cerrahisi'
  ),
  bilgi(
      isim: 'Dr.Kıymet Asar',
      brans:'Kardiyoloji'
  ),
  bilgi(
      isim: 'Uzm.Dr.Meltem Öncel',
      brans:'Kulak Burun Boğaz Hastalıkları'
  ),
  bilgi(
      isim: 'Uzm.İrem Soylu',
      brans:'Nefroloji'
  ),
  bilgi(
      isim: 'Uzm.Dr.Ahmet Gündüz',
      brans:'Nöroloji'
  ),
  bilgi(
      isim: 'Uzm.Dr.Ali Erkul',
      brans:'Nöroloji'
  ),
  bilgi(
      isim: 'Dr.Fuat Olpak',
      brans:'Nöroloji'
  ),
  bilgi(
      isim: 'Uzm.Dr.Nuri Bayrak',
      brans:'Ruh Sağlığı ve Hastalıkları'
  ),

];

class uzmandoktorlar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFF9800),
          title: Text("Uzman Doktorlar",
            textAlign: TextAlign.center,
            style:TextStyle(
              color: Colors.black45,
              fontWeight:FontWeight.w800,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
        ),
        body: ContactList(bilgiler)
    );
  }
}
class ContactList extends StatelessWidget {
  final List _contacts;
  ContactList(this._contacts);
  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        children: _buildContactList()
    );
  }
  List<_ContactListItem> _buildContactList() {
    return _contacts.map((contact) => _ContactListItem(contact))
        .toList();
  }
}
class _ContactListItem extends ListTile {
  _ContactListItem(bilgi contact) :
        super(
          title : Text(contact.isim),
          subtitle: Text(contact.brans),
          leading: CircleAvatar(
              child: Text(contact.brans[0])
          )
      );
}