import 'package:flutter/material.dart';
import 'package:my_website/utils/colors.dart';
import 'package:my_website/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class C9 extends StatefulWidget {
  const C9({super.key});

  @override
  State<C9> createState() => _C9State();
}

class _C9State extends State<C9> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileC9(),
      desktop: desktopC9(),
    );
  }

  Widget mobileC9() {
    return Container(
      
       );
  }
  ///////////////////////////////////////////////////////////////////////////////////////

  Widget desktopC9() {
    return Container(
      width: double.infinity,
      height: 750,
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
                child: Container(
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Text('20M+ downloaded from 32\n        diffrent countires',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: w! / 20,
                            fontWeight: FontWeight.bold,
                            height: 1.2)),
                    const Text(
                      'Try demo for 7 days with full features.',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Container(
                      height: 45,
                      child: ElevatedButton.icon(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black)),
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_circle_down),
                          label: const Text('Try Free Demo')),
                    ),
                    Expanded(
                        child: Row(
                      children: [
                        Container(
                          width: w,
                          decoration: const BoxDecoration(
                              image: DecorationImage(image: AssetImage(im))),
                        )
                      ],
                    ))
                  ],
                ),
              ),
            ))
          ],
        )),
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
