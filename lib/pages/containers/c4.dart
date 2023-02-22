import 'package:flutter/material.dart';
import 'package:my_website/utils/colors.dart';
import 'package:my_website/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class C4 extends StatefulWidget {
  const C4({super.key});

  @override
  State<C4> createState() => _C4State();
}

class _C4State extends State<C4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobile(),
      desktop: desktop(),
    );
  }

  Widget desktop() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 5),
      child: Row(
        children: [
          Expanded(
              child: Container(
            height: 700,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(i2),
            )),
          )),
          const SizedBox(
            width: 50,
          ),
          Expanded(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'free some cost',
                  style: TextStyle(fontSize: 16, color: Colors.grey[400]),
                ),
                Text(
                  'Save cost\nfor you and\nfamily',
                  style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Tellus lacus morbi sagittis lacus in. Amet nisl at\nmauris enim accumsan nisi, tincidunt vel. Enim\nipsum, amet quis ullamcorper eget ut.',
                  style: TextStyle(fontSize: 16, color: Colors.grey[400]),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Text("Learn More"),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Appcolor.Primary,
                        )),
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    );
  }

  Widget mobile() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Expanded(
              child: Container(
            height: 300,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(i2),
            )),
          )),
          const SizedBox(
            width: 50,
          ),
          Expanded(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'free some cost',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                Text(
                  'Save cost\nfor you and\nfamily',
                  style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Tellus lacus morbi sagittis lacus in. Amet nisl at\nmauris enim accumsan nisi, tincidunt vel. Enim\nipsum, amet quis ullamcorper eget ut.',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Text("Learn More"),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        )),
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
