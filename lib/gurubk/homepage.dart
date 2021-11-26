import 'package:flutter/material.dart';
import 'package:projectcakapp/gurubk/ListGuruBk.dart';
import 'package:projectcakapp/gurubk/TambahGuruBk.dart';
import 'package:projectcakapp/shared/navbk.dart';


class HomePageBk extends StatefulWidget {
  HomePageBk({Key? key}) : super(key: key);

  @override
  _HomePageBkState createState() => _HomePageBkState();
}

class _HomePageBkState extends State<HomePageBk> {
  TextEditingController searchController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer : NavBar(),
      appBar: AppBar(
          title: Text('Guru BK')
      ),
      body: Column(
        children: [
          Container(
            //Search Wala Container

            padding: EdgeInsets.symmetric(horizontal: 8),
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(24)),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    if ((searchController.text).replaceAll(" ", "") ==
                        "") {
                      print("Blank search");
                    } else {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => Search(searchController.text)));
                    }
                  },
                  child: Container(
                    child: Icon(
                      Icons.search,
                      color: Colors.blueAccent,
                    ),
                    margin: EdgeInsets.fromLTRB(3, 0, 7, 0),
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: searchController,
                    textInputAction: TextInputAction.search,
                    onSubmitted: (value){
                      print(value);
                    },
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Cari Guru BK"),
                  ),
                )
              ],
            ),
          ),
          ListGuruBkPage(),
          ElevatedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TambahGuruBkPage(),
                ),
              )
            },
            child: Text('Tambah Guru BK', style: TextStyle(fontSize: 20.0)),
            style: ElevatedButton.styleFrom(primary: Colors.red),
          )
        ],
      ),
    );
  }
}
