// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class pageTwo extends StatefulWidget {
  static const root = "/menu";

  @override
  _pageTwoState createState() => _pageTwoState();
}

class _pageTwoState extends State<pageTwo> {
  List<Tab> myTab = [
    Tab(
      icon: Icon(Icons.camera_alt_outlined),
    ),
    Tab(
      text: "PESAN",
    ),
    Tab(
      text: "STATUS",
    ),
    Tab(
      text: "PAGGILAN",
    ),
    Tab(
      text: "RANDOM",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTab.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tekotok"),
          bottom: TabBar(
            tabs: myTab,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
                child: Center(
                  child: Text(
                    "Kamera anda belum aktif",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                color: Colors.black),
            ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    myCars(),
                    myCars(),
                    myCars(),
                    myCars(),
                    myCars(),
                    myCars(),
                  ],
                );
              },
            ),
            Container(color: Colors.grey),
            Container(color: Colors.yellow),
            Container(color: Colors.black45),
          ],
        ),
      ),
    );
  }
}

class myCars extends StatelessWidget {
  const myCars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(),
        title: Text("Wafiq Muhaz"),
        subtitle: Text("Hai, Nama saya Wafiq Muhammad Abdul Aziz"),
      ),
    );
  }
}
