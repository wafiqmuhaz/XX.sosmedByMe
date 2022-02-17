// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:apa/pager/pageOneFor.dart';
import 'package:apa/pager/pageOneReg.dart';
import 'package:apa/pager/pageTwo.dart';
import 'package:flutter/material.dart';

class pageSatu extends StatelessWidget {
  static const root = "/utama";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue[500],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 10),
                height: 55,
                child: Text(
                  "Tekotok",
                  style: TextStyle(fontSize: 40),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email_outlined),
                          hintText: "Masukkan E mail Anda",
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person_add),
                        hintText: "Masukkan Password Anda",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Text(
                                  "Apakah anda ingin menyimpam password anda?"),
                              title: Text(
                                  "Password akan disimpan jika anda menekan tombol iya"),
                              actions: <ElevatedButton>[
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed(pageTwo.root);
                                  },
                                  child: Text("Tidak"),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed(pageTwo.root);
                                  },
                                  child: Text("Iya"),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(pageSatuReg.root);
                      },
                      child: Text(
                        "Sign Up for Facebook",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(pageSatuFor.root);
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
