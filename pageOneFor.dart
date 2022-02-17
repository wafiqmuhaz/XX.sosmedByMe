// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:apa/pager/pageTwo.dart';
import 'package:flutter/material.dart';

class pageSatuFor extends StatelessWidget {
  static const root = "/forget";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[500],
        padding: EdgeInsets.only(top: 150, left: 15, right: 15),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("Forgot Password",
                  style: TextStyle(fontSize: 50, color: Colors.white)),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: "Masukkan E-mail Anda",
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password_outlined),
                  hintText: "Masukkan Password lama Anda",
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password_outlined),
                  hintText: "Masukkan Password Baru Anda",
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password_outlined),
                  hintText: "Ulangi Password Baru Anda",
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Cancel"),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text(
                              "Apakah anda yakin?"),
                          title: Text(
                              "Semua data anda akan disimpan!"),
                          actions: <ElevatedButton>[
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed(pageTwo.root);
                              },
                              child: Text("Tidak"),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed(pageTwo.root);
                              },
                              child: Text("Iya"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Change Password"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
