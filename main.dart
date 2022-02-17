import 'package:apa/pager/pageOne.dart';
import 'package:apa/pager/pageOneFor.dart';
import 'package:apa/pager/pageOneReg.dart';
import 'package:apa/pager/pageTwo.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(app());
}

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: pageSatu(),
      initialRoute: pageSatu.root,
      routes: {
        pageSatu.root: (context) => pageSatu(),
        pageSatuReg.root: (context) => pageSatuReg(),
        pageSatuFor.root: (context) => pageSatuFor(),
        pageTwo.root: (context) => pageTwo(),
      },
    );
  }
}
