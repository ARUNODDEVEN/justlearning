import 'package:flutter/material.dart';
import 'package:my_website/pages/containers/c1.dart';
import 'package:my_website/pages/containers/c10.dart';
import 'package:my_website/pages/containers/c2.dart';
import 'package:my_website/pages/containers/c3.dart';
import 'package:my_website/pages/containers/c4.dart';
import 'package:my_website/pages/containers/c5.dart';
import 'package:my_website/pages/containers/c6.dart';
import 'package:my_website/pages/containers/c7.dart';
import 'package:my_website/pages/containers/c8.dart';
import 'package:my_website/pages/containers/c9.dart';
import 'package:my_website/utils/constants.dart';
import 'package:my_website/widgets/navbar.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(children: [
        SingleChildScrollView(
          child: Container(
            // color: Appcolor.Primary,
            // ignore: prefer_const_literals_to_create_immutables
            child: Column(children: [
              // ignore: prefer_const_constructors
              Navbar(),
              C1(),
              C2(),
              C3(),
              C4(),
              C5(),
              C6(),
              C7(),
              C8(),
              C9(),
              C10(),
            ]),
          ),
        ),
         Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Navbar(),
        )
      ]),
    );
  }
}
