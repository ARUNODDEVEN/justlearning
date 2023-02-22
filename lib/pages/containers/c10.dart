import 'package:flutter/material.dart';
import 'package:my_website/utils/colors.dart';
import 'package:my_website/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:icon_forest/icon_forest.dart';

class C10 extends StatefulWidget {
  const C10({super.key});

  @override
  State<C10> createState() => _C10State();
}

class _C10State extends State<C10> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobile(),
      desktop: desktop(),
    );
  }

  Widget desktop() {
    final textcontroller = TextEditingController();
    return Container(
      color: Colors.white,
      height: 450,
      width: w,
      child: Padding(
        padding: const EdgeInsets.only(top: 45),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                navlogo(),
                Column(
                  children: [
                    Text(
                      "Links",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    links(),
                  ],
                ),
                Column(
                  children: [
                    Text("Legal",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    legal(),
                  ],
                ),
                Container(
                  child: Column(
                    children: [
                      Text("Newsletter",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text("Over 25000 people have subscribed"),
                      Expanded(child: TextFormField())
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              color: Color.fromARGB(13, 0, 0, 0),
              height: 3,
              width: 1000,
            ),
            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Privacy & Terms',
                        style: TextStyle(color: Colors.black),
                      )),
                  TextButton(
                    onPressed: () {},
                    child: Text('Contact Us',
                        style: TextStyle(color: Colors.black)),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text('Copyright @ 2022 xpence',
                          style: TextStyle(color: Colors.black))),
                  Iconpack(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget mobile() {
    return Container();
  }

  Widget navlogo() {
    return Container(
      width: 180,
      height: 30,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(logo)),
      ),
    );
  }
  // Widget clip(heading, i, subheading, price) {
  //   return ClipRRect(
  //     borderRadius: BorderRadius.circular(18),
  //     child: Container(
  //       height: 300,
  //       width: 350,
  //       color: Colors.white,
  //       child: Column(children: [
  //         SizedBox(
  //           height: 10,
  //         ),
  //         Icon(
  //           i,
  //           size: 40,
  //         ),
  //         SizedBox(
  //           height: 5,
  //         ),
  //         Text(heading,
  //             style: TextStyle(
  //                 fontSize: 18,
  //                 fontWeight: FontWeight.bold,
  //                 color: Colors.black)),
  //         SizedBox(
  //           height: 10,
  //         ),
  //         Text(subheading, style: TextStyle(fontSize: 16, color: Colors.black)),
  //         Center(
  //           child: RichText(
  //             text: TextSpan(
  //               style: DefaultTextStyle.of(context).style,
  //               children: <TextSpan>[
  //                 TextSpan(
  //                     text: price,
  //                     style: TextStyle(
  //                         fontWeight: FontWeight.bold,
  //                         color: Colors.black,
  //                         fontSize: 18)),
  //                 TextSpan(
  //                     text: "/year", style: TextStyle(color: Colors.black54)),
  //               ],
  //             ),
  //           ),
  //         ),
  //         Container(
  //           height: 45,
  //           child: ElevatedButton.icon(
  //               style: ButtonStyle(
  //                   backgroundColor:
  //                       MaterialStateProperty.all(Appcolor.Primary)),
  //               onPressed: () {},
  //               icon: Icon(Icons.currency_exchange),
  //               label: Text('Get this')),
  //         ),
  //       ]),
  //     ),
  //   );
  // }

  Widget links() {
    return Container(
      // color: Colors.amber,
      padding: const EdgeInsets.only(top: 5, left: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextButton(
            onPressed: () {},
            child: const Text(
              'Home',
              style: TextStyle(color: Colors.black),
            )),
        TextButton(
            onPressed: () {},
            child:
                const Text('About us', style: TextStyle(color: Colors.black))),
        TextButton(
            onPressed: () {},
            child:
                const Text('Careers', style: TextStyle(color: Colors.black))),
        TextButton(
            onPressed: () {},
            child:
                const Text('Pricing', style: TextStyle(color: Colors.black))),
        TextButton(
            onPressed: () {},
            child:
                const Text('Features', style: TextStyle(color: Colors.black))),
        // TextButton(
        //     onPressed: () {},
        //     child: const Text('Blog', style: TextStyle(color: Colors.black))),
      ]),
    );
  }

  Widget legal() {
    return Container(
      // color: Colors.amber,
      padding: const EdgeInsets.only(top: 5, left: 78),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextButton(
            onPressed: () {},
            child: const Text('Terms of use',
                style: TextStyle(color: Colors.black))),
        TextButton(
            onPressed: () {},
            child: const Text('Terms of Conditions',
                style: TextStyle(color: Colors.black))),
        TextButton(
            onPressed: () {},
            child: const Text('Privacy Policy',
                style: TextStyle(color: Colors.black))),
        TextButton(
            onPressed: () {},
            child: const Text(
              'Cookies Policy',
              style: TextStyle(color: Colors.black),
            )),
      ]),
    );
  }

  Widget Iconpack() {
    return Row(
      children: [
        Icon(Icons.facebook),
        Icon(Icons.apple),
        Icon(Icons.adobe),
      ],
    );
  }
}
