import 'package:flutter/material.dart';
import 'package:my_website/utils/colors.dart';
import 'package:my_website/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class C6 extends StatefulWidget {
  const C6({super.key});

  @override
  State<C6> createState() => _C6State();
}

class _C6State extends State<C6> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobile(),
      desktop: desktop(),
    );
  }

  Widget desktop() {
    return Container(
      height: 600,
      width: w,
      // color: Appcolor.Primary,
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'The Product we\nwork with.',
                  style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2),
                ),
                const SizedBox(
                  width: 100,
                ),
                const Text(
                  '\nTellus lacus morbi sagittis lacus in. Amet nisl at\nmauris enim accumsan nisi, tincidunt vel. Enim\nipsum, amet quis ullamcorper eget ut.\nmauris enim accumsan nisi, tincidunt vel',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              clip('Cross Platform', Icons.gamepad),
              const SizedBox(
                width: 20,
              ),
              clip('Cloud Server', Icons.cloud),
              const SizedBox(width: 20),
              clip('Pure Flutter', Icons.flutter_dash),
            ],
          ))
        ],
      ),
    );
  }

  Widget mobile() {
    return Container(
      height: 500,
      width: w,
      // color: Appcolor.Primary,
      child: Column(
        children: [
          Text(
            'The Product we work with',
            style: TextStyle(
              fontSize: w! / 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                clipm('Cross Platform', Icons.gamepad),
                const SizedBox(
                  width: 10,
                ),
                clipm('Cloud Server', Icons.cloud),
                const SizedBox(width: 10),
                clipm('Pure Flutter', Icons.flutter_dash),
              ],
            ),
          ),
          const Text(
            '\nTellus lacus morbi sagittis lacus in. Amet nisl at\nmauris enim accumsan nisi, tincidunt vel. Enim\nipsum, amet quis ullamcorper eget ut.\nmauris enim accumsan nisi, tincidunt vel',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ],
      ),
    );
  }

  Widget clip(heading, i) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: 250,
        width: 300,
        color: Appcolor.Primary,
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Icon(
            i,
            size: 80,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(heading,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const Text(
            "Elit esse cillum dolore eu fugiat nulla\n           pariatur cillum dolore eu\n               hey to image.png ",
          ),
        ]),
      ),
    );
  }

  Widget clipm(heading, i) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: 160,
        width: 150,
        color: Appcolor.Primary,
        child: Column(children: [
          const SizedBox(
            height: 2,
          ),
          Icon(
            i,
            size: 30,
          ),
          const SizedBox(
            height: 2,
          ),
          Text(heading,
              style:
                  const TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "Elit esse cillum dolore eu fugiat nulla jhdfj jsdj hfisdhfi fshdfidsn uidsids",
            ),
          ),
        ]),
      ),
    );
  }
}
