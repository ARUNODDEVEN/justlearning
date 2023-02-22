import 'package:flutter/material.dart';
import 'package:my_website/utils/colors.dart';
import 'package:my_website/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class C7 extends StatefulWidget {
  const C7({super.key});

  @override
  State<C7> createState() => _C7State();
}

class _C7State extends State<C7> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobile(),
      desktop: desktop(),
    );
  }

  Widget desktop() {
    return Container(
      color: Appcolor.Primary,
      height: 800,
      width: w,
      // color: Appcolor.Primary,
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 200,
                ),
                Text(
                  '       Choose your flexible plan',
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
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              clip(
                  'Starter Plan',
                  Icons.paid_outlined,
                  '1.Store unlimited data\n2.Export to pdf, xls, csv\n3.Cloud server support',
                  '\$99.9'),
              const SizedBox(
                width: 20,
              ),
              clip(
                  'Sliver Plan',
                  Icons.paid_rounded,
                  '1.Store unlimited data\n2.Export to pdf, xls, csv\n3.Cloud server support',
                  '\$199.9'),
              const SizedBox(width: 20),
              clip(
                  'Diamond Plan',
                  Icons.paid_sharp,
                  '1.Store unlimited data\n2.Export to pdf, xls, csv\n3.Cloud server support',
                  '\$299.9'),
            ],
          ))
        ],
      ),
    );
  }

  Widget mobile() {
    return Container(
      color: Appcolor.Primary,
      height: 350,
      width: w,
      // color: Appcolor.Primary,
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Choose your flexible plan',
                style: TextStyle(
                    fontSize: w! / 20,
                    fontWeight: FontWeight.bold,
                    height: 1.2),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              clipm(
                  'Starter Plan',
                  Icons.paid_outlined,
                  '1.Store unlimited data\n2.Export to pdf, xls, csv\n3.Cloud server support',
                  '\$99.9'),
              const SizedBox(
                width: 5,
              ),
              clipm(
                  'Sliver Plan',
                  Icons.paid_rounded,
                  '1.Store unlimited data\n2.Export to pdf, xls, csv\n3.Cloud server support',
                  '\$199.9'),
              const SizedBox(width: 5),
              clipm(
                  'Diamond Plan',
                  Icons.paid_sharp,
                  '1.Store unlimited data\n2.Export to pdf, xls, csv\n3.Cloud server support',
                  '\$299.9'),
            ],
          )
        ],
      ),
    );
  }

  Widget clip(heading, i, subheading, price) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: 300,
        width: 350,
        color: Colors.white,
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          Icon(
            i,
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
          Center(
            child: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                      text: price,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20)),
                  const TextSpan(
                      text: "/year", style: TextStyle(color: Colors.black54)),
                ],
              ),
            ),
          ),
          Container(
            height: 45,
            child: ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Appcolor.Primary)),
                onPressed: () {},
                icon: const Icon(Icons.currency_exchange),
                label: const Text('Get this')),
          ),
        ]),
      ),
    );
  }

  Widget clipm(heading, i, subheading, price) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: 200,
        width: 150,
        color: Colors.white,
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          Icon(
            i,
            size: 30,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(heading,
              style: const TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          const SizedBox(
            height: 5,
          ),
          Text(subheading,
              style: const TextStyle(fontSize: 12, color: Colors.black)),
          Center(
            child: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                      text: price,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20)),
                  const TextSpan(
                      text: "/year", style: TextStyle(color: Colors.black54)),
                ],
              ),
            ),
          ),
          Container(
            height: 30,
            child: ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Appcolor.Primary)),
                onPressed: () {},
                icon: const Icon(Icons.currency_exchange),
                label: const Text('Get this')),
          ),
        ]),
      ),
    );
  }
}
