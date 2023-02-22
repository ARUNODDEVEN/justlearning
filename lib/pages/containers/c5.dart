import 'package:flutter/material.dart';
import 'package:my_website/utils/colors.dart';
import 'package:my_website/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class C5 extends StatefulWidget {
  const C5({super.key});

  @override
  State<C5> createState() => _C5State();
}

class _C5State extends State<C5> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobile(),
      desktop: desktop(),
    );
  }

  Widget desktop() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Row(
        children: [
          Expanded(
              child: Container(
            height: 700,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Use Anytime',
                  style: TextStyle(fontSize: 16, color: Colors.grey[400]),
                ),
                Text(
                  'Use anytime\nwhen you\nneed',
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
          Expanded(
              child: Container(
            height: 530,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(i3), fit: BoxFit.contain)),
          ))
        ],
      ),
    );
  }

  Widget mobile() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: w,
        color: Colors.cyan,
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Use Anytime',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 0, 77, 185)),
                ),
                Text(
                  'Use anytime\nwhen you\nneed',
                  style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Tellus lacus morbi sagittis Amet nisl at\nmauris enim accumsan nisi\nipsum,ullamcorper eget ut.',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 0, 77, 185)),
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
            Container(
              height: 500,
              width: 200,
              decoration:
                  BoxDecoration(image: DecorationImage(image: AssetImage(i3))),
            ),
          ],
        ),
      ),
    );
  }
}
