import 'package:flutter/material.dart';
import 'package:projectcakapp/datasiswa/indexsiswa.dart';
import 'package:projectcakapp/gurubk/homepage.dart';
import 'package:projectcakapp/walikelas/indexwalas.dart';


class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget> [
          UserAccountsDrawerHeader(accountName: Text("Daniel Kevin"), accountEmail:Text("3103119049@student.smktelkom-pwt.sch.id") ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: (){
            },
          ),
          ListTile(
            leading: Icon(Icons.article_outlined),
            title: Text('Pengumuman'),
            onTap: (){
            },
          ),
          ListTile(
            leading: Icon(Icons.rule_sharp),
            title: Text('Tata Tertib'),
            onTap: (){
            },
          ),
          ListTile(
            leading: Icon(Icons.control_point),
            title: Text('Poin Siswa'),
            onTap: (){
            },
          ),
          ListTile(
            leading: Icon(Icons.score),
            title: Text('Nilai Karakter'),
            onTap: (){
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Guru BK'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePageBk() ));
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Walikelas'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => wali_kelas() ));
            },
          ),
          ListTile(
            leading: Icon(Icons.supervised_user_circle),
            title: Text('Data Siswa'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => data_siswa() ));
            },
          ),
        ],
      ),
    );
  }
}