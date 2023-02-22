import 'package:flutter/material.dart';
import 'package:my_website/utils/colors.dart';
import 'package:my_website/utils/constants.dart';
// ignore: depend_on_referenced_packages
import 'package:responsive_builder/responsive_builder.dart';

class C2 extends StatefulWidget {
  const C2({super.key});

  @override
  State<C2> createState() => _C2State();
}

class _C2State extends State<C2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileC2(),
      desktop: desktopC2(),
    );
  }

  Widget mobileC2() {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Appcolor.Primary),
        child: Column(children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 0),
            child: Container(
              height: 195,
              width: double.infinity,
              decoration:const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.contain),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 90),
            child: Row(
              children: [
                companylogom(ln),
                companylogom(ss),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
            child: Row(
              children: [
                companylogom(cc),
               const SizedBox(width: 2),
                companylogom(gg),
               const SizedBox(width: 2),
                companylogom(fb),
              ],
            ),
          ),
        ]));
  }
  ///////////////////////////////////////////////////////////////////////////////////////

  Widget desktopC2() {
    return Container(
      width: double.infinity,
      height: 900,
      decoration: BoxDecoration(color: Appcolor.Primary),
      child: Column(children: [
        Expanded(
            child: Stack(
          children: [
            Positioned(
              right: -10,
              top: -10,
              child: Container(
                height: 320,
                width: 320,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(v1), fit: BoxFit.contain)),
              ),
            ),
            Positioned(
              bottom: -20,
              left: -20,
              child: Container(
                height: 320,
                width: 320,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(v2), fit: BoxFit.contain),
                ),
              ),
            ),
            Positioned(
                top: 50,
                left: 43,
                right: 43,
                bottom: 0,
                child: Container(
                  width: double.infinity,
                  height: 800,
                  decoration:const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.fill),
                  ),
                ))
          ],
        )),
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 40),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            companylogo(fb),
            companylogo(gg),
            companylogo(cc),
            companylogo(ss),
            companylogo(ln),
          ]),
        ),
      ]),
    );
  }

  Widget companylogo(String image) {
    return Container(
      width: 160,
      height: 40,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(image), fit: BoxFit.contain)),
    );
  }

  Widget companylogom(String image) {
    return Container(
      width: 160,
      height: 40,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(image), fit: BoxFit.contain)),
    );
  }
}
