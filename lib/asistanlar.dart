import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Asistanlar',
          theme: ThemeData(
              primarySwatch: Colors.orange
          ),
          home: asistanlar()
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
      isim: 'Ali Demirci',
      brans:'Ağız ve Diş Sağlığı'
  ),
  bilgi(
      isim: 'Murat Gülen',
      brans:'Ağız ve Diş Sağlığı'
  ),
  bilgi(
      isim: 'Lütfiye Selvi ',
      brans:'Beyin ve Sinir Cerrahisi'
  ),
  bilgi(
      isim: 'Hasan Deniz',
      brans:'Çocuk Cerrahisi'
  ),
  bilgi(
      isim: 'Zeynep Doğan',
      brans:'Deri ve Zührevi Hastalıkları(Cildiye)'
  ),
  bilgi(
      isim: 'Mustafa Bulut',
      brans:'Fiziksel Tıp ve Rehabilitasyon'
  ),
  bilgi(
      isim: 'Fevzi Kaya',
      brans:'Fiziksel Tıp ve Rehabilitasyon'
  ),
  bilgi(
      isim: 'Melek Eker',
      brans:'Genel Cerrahi'
  ),
  bilgi(
      isim: 'Duygu Öz',
      brans:'Göz Hastalıkları'
  ),
  bilgi(
      isim: 'Fatma Güneş',
      brans:'Göz Hastalıkları'
  ),
  bilgi(
      isim: 'Cüneyt Temiz',
      brans:'Göz Hastalıkları'
  ),
  bilgi(
      isim: 'Engin Sedat',
      brans:'İç Hastalıkları(Dahiliye)'
  ),
  bilgi(
      isim: 'Şevval Aydın',
      brans:'İç Hastalıkları(Dahiliye)'
  ),
  bilgi(
      isim: 'Asude Şahin',
      brans:'Nöroloji'
  ),
  bilgi(
      isim: 'Oğuzhan Durmaz',
      brans:'Nöroloji'
  ),

];

class asistanlar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor:Color(0xFFff9800) ,
          title: Text("Asistanlar",
            textAlign: TextAlign.center,
            style:TextStyle(
              color: Colors.black45,
              fontWeight:FontWeight.w800,
              fontSize: 30,
            ),
          ),

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