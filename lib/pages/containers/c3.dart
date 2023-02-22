import 'package:flutter/material.dart';
import 'package:my_website/utils/colors.dart';
import 'package:my_website/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class C3 extends StatefulWidget {
  const C3({super.key});

  @override
  State<C3> createState() => _C3State();
}

class _C3State extends State<C3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobile(),
      desktop: desktop(),
    );
  }

  Widget mobile() {
    return Container(
      child: Column(
        children: [
          Container(
            height: w! / 2,
            width: w! / 2,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(i4), fit: BoxFit.contain)),
          ),
          Text(
            'Always Online',
            style: TextStyle(fontSize: 16, color: Colors.grey[400]),
          ),
          Text(
            'Real-time support\n       with cloud',
            style: TextStyle(
                fontSize: w! / 15, fontWeight: FontWeight.bold, height: 1.2),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Learn More"),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Appcolor.Primary,
                  )),
            ],
          ),
          Text(
            'Tellus lacus morbi sagittis lovein. Amet nisl at\nmauris enim accumsan nisi, tincidunt vel. Enim\nipsum, amet quis ullamcorper eget ut.',
            style: TextStyle(fontSize: 16, color: Colors.grey[400]),
          ),
        ],
      ),
    );
  }

  Widget desktop() {
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
                  'Always Online',
                  style: TextStyle(fontSize: 16, color: Colors.grey[400]),
                ),
                Text(
                  'Real-time\nsupport with\ncloud',
                  style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Tellus lacus morbi sagittis lovein. Amet nisl at\nmauris enim accumsan nisi, tincidunt vel. Enim\nipsum, amet quis ullamcorper eget ut.',
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
                    image: AssetImage(i4), fit: BoxFit.contain)),
          ))
        ],
      ),
    );
  }
}
