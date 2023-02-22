import 'package:flutter/material.dart';
import 'package:my_website/utils/colors.dart';
import 'package:my_website/utils/constants.dart';
// ignore: depend_on_referenced_packages
import 'package:responsive_builder/responsive_builder.dart';

class C1 extends StatefulWidget {
  const C1({super.key});

  @override
  State<C1> createState() => _C1State();
}

class _C1State extends State<C1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileC1(),
      desktop: DesktopC1(),
    );
  }

  Widget mobileC1() {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Column(
        children: [
          Container(
            height: w! / 1.2,
            width: w! / 1.2,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(i1), fit: BoxFit.contain)),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Track Your\n Expenses to\n Save Money',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: w! / 10,
                      fontWeight: FontWeight.bold,
                      height: 1.2),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Helps you to organize your income and expenses',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 170, 170, 170)),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 45,
                  child: ElevatedButton.icon(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Appcolor.Primary)),
                      onPressed: () {},
                      icon: Icon(Icons.drafts_outlined),
                      label: Text('Try Free Demo')),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '— Web, iOs and Android',
                  style: TextStyle(fontSize: 16, color: Colors.grey[400]),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
  ///////////////////////////////////////////////////////////////////////////////////////

  Widget DesktopC1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Row(
        children: [
          Expanded(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Track Your\nExpenses to\nSave Money',
                  style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Helps you to organize your income and expenses',
                  style: TextStyle(fontSize: 16, color: Colors.grey[400]),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      height: 45,
                      child: ElevatedButton.icon(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Appcolor.Primary)),
                          onPressed: () {},
                          icon: Icon(Icons.drafts_outlined),
                          label: Text('Try Free Demo')),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '— Web, iOs and Android',
                      style: TextStyle(fontSize: 16, color: Colors.grey[400]),
                    )
                  ],
                )
              ],
            ),
          )),
          Expanded(
              child: Container(
            height: 530,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(i1), fit: BoxFit.contain)),
          ))
        ],
      ),
    );
  }
}
