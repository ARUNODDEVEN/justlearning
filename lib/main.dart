import 'package:flutter/material.dart';
import 'package:my_website/pages/home.dart';
import 'package:my_website/utils/colors.dart';

void main(List<String> args) {
  runApp(new Website());
}


class Website extends StatelessWidget {
  const Website({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense',
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'HindSiliguri',
        primaryColor: Appcolor.Primary,
      ),
      home: Home(),
    );
  }
}
