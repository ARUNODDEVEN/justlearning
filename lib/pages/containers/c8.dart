import 'package:flutter/material.dart';
import 'package:my_website/utils/colors.dart';
import 'package:my_website/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class C8 extends StatefulWidget {
  const C8({super.key});

  @override
  State<C8> createState() => _C8State();
}

class _C8State extends State<C8> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobile(),
      desktop: desktop(),
    );
  }

  Widget desktop() {
    return Container(
      // color: Appcolor.Primary,
      height: 800,
      width: 1100 - 20,
      // color: Appcolor.Primary,
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 150,
                ),
                Text(
                  '       We have millions of\n             best wishers',
                  style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2),
                ),
                const SizedBox(
                  width: 100,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  clip(
                    'oddEVEN',
                    '1.Store unlimited data\n2.Export to pdf, xls, csv\n3.Cloud server support',
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  clip(
                    'Arun',
                    '1.Store unlimited data\n2.Export to pdf, xls, csv\n3.Cloud server support',
                  ),
                  const SizedBox(width: 20),
                  clip(
                    'Knojia',
                    '1.Store unlimited data\n2.Export to pdf, xls, csv\n3.Cloud server support',
                  ),
                  const SizedBox(width: 20),
                  clip(
                    'Abhi',
                    '1.Store unlimited data\n2.Export to pdf, xls, csv\n3.Cloud server support',
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  clip(
                    'Shah',
                    '1.Store unlimited data\n2.Export to pdf, xls, csv\n3.Cloud server support',
                  ),
                  const SizedBox(width: 20),
                  clip(
                    'Harsh',
                    '1.Store unlimited data\n2.Export to pdf, xls, csv\n3.Cloud server support',
                  ),
                ],
              )),
          SizedBox(
            width: w,
            height: 60,
          )
        ],
      ),
    );
  }

  Widget mobile() {
    return Container(
      color: Appcolor.Primary,
      height: 400,
      width: w,
      // color: Appcolor.Primary,
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            '  We have millions of best wishers',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: w! / 20, fontWeight: FontWeight.bold, height: 1.2),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    clipm(
                      'oddEVEN',
                      '1.Store unlimited data\n2.Export to pdf, xls, csv\n3.Cloud server support',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    clipm(
                      'Arun',
                      '1.Store unlimited data\n2.Export to pdf, xls, csv\n3.Cloud server support',
                    ),
                    const SizedBox(width: 10),
                    clipm(
                      'Knojia',
                      '1.Store unlimited data\n2.Export to pdf, xls, csv\n3.Cloud server support',
                    ),
                    const SizedBox(width: 10),
                    clipm(
                      'Abhi',
                      '1.Store unlimited data\n2.Export to pdf, xls, csv\n3.Cloud server support',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    clipm(
                      'Shah',
                      '1.Store unlimited data\n2.Export to pdf, xls, csv\n3.Cloud server support',
                    ),
                    const SizedBox(width: 10),
                    clipm(
                      'Harsh',
                      '1.Store unlimited data\n2.Export to pdf, xls, csv\n3.Cloud server support',
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  Widget clip(heading, subheading) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: 200,
        width: 250,
        color: Appcolor.Primary,
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          const Icon(
            Icons.person,
            size: 40,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(heading,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          const SizedBox(
            height: 10,
          ),
          Text(subheading,
              style: const TextStyle(fontSize: 16, color: Colors.black)),
        ]),
      ),
    );
  }

  Widget clipm(heading, subheading) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: 150,
        width: 150,
        color: Colors.white,
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          const Icon(
            Icons.person,
            size: 20,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(heading,
              style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          const SizedBox(
            height: 10,
          ),
          Text(subheading,
              style: const TextStyle(fontSize: 12, color: Colors.black)),
        ]),
      ),
    );
  }
}
