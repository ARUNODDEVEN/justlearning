import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:responsive_builder/responsive_builder.dart';

import 'package:my_website/utils/colors.dart';
import 'package:my_website/utils/constants.dart';
import 'package:my_website/utils/styles.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class Navbar extends StatefulWidget {
  Navbar({
    super.key,
  });

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileNavbar(),
      desktop: desktopNavbar(),
    );
  }

//////////////////////////////////////////////////////////////////////////////////
  Widget mobileNavbar() {
    final List<String> items = [
      'Features',
      'Pricing',
      'Feedback',
      'About Us',
    ];
    String? selectedValue;

    return Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      padding: EdgeInsets.only(
        right: 20,
      ),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          navlogo(),
          DropdownButtonHideUnderline(
              child: DropdownButton2(
            alignment: AlignmentDirectional.topStart,
            iconEnabledColor: Appcolor.Primary,
            icon: Icon(Icons.menu),
            items: items
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value as String;
              });
            },
          )),
        ],
      ),
    );
  }

////////////////////////////////////////////////////////////////////////////////
  Widget desktopNavbar() {
    return Container(
      color: Colors.white,
      width: w,
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navlogo(),
          Row(
            children: [
              navbutton('Features'),
              navbutton('About Us'),
              navbutton('Pricing'),
              navbutton('Feedback')
            ],
          ),
          SizedBox(
            height: 45,
            child: ElevatedButton(
              onPressed: () {},
              style: buttonStyle,
              child: Text(
                'Request a Demo',
                style: TextStyle(color: Appcolor.Primary),
              ),
            ),
          ),
        ],
      ),
    );
  }

////////////////////////////////////////////////////////////////////////////////////////
  Widget navbutton(String text) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 18),
      ),
    );
  }

/////////////////////////////////////////////////////////////////////////////////////////
  Widget navlogo() {
    return Container(
      width: 110,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(logo)),
      ),
    );
  }
}
