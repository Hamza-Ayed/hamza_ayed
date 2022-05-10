import 'package:flutter/material.dart';

class LeftSide extends StatelessWidget {
  final double width;

  const LeftSide({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: SizedBox(
              width: width,
              // color: nb3,
              child: const Text(
                'I am a professional Mobile App and Web,3+ years\nof experience in Flutter.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22, top: 16),
          child: SizedBox(
              width: width,
              // color: nb3,
              child: const Text(
                'EDUCATION',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22, top: 26),
          child: SizedBox(
              width: width,
              // color: nb3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Bachelor of Mathmatic',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Mutah University | 2003-2007')
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22, top: 16),
          child: SizedBox(
              width: width,
              // color: nb3,
              child: const Text(
                'SKILS',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22, top: 26),
          child: SizedBox(
              width: width,
              // color: nb3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Android Apps and iOS Apps',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Wep and Windows App ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Database MYSQL and Servers',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
