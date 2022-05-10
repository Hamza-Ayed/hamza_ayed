import 'package:flutter/material.dart';

import 'color.dart';

class RightSide extends StatelessWidget {
  final double width;

  const RightSide({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 2, top: 1),
          child: SizedBox(
              width: width,
              // color: nb3,
              child: const Text(
                'Languages',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 2, top: 26),
          child: SizedBox(
              width: width,
              // color: nb3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '* English ,Turkish,Hebro And Mother Language is Arabic .',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '** Dart,Php and MySql .',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 2, top: 16),
          child: SizedBox(
              width: width,
              // color: nb3,
              child: const Text(
                'What Can I develop',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 2),
          child: SizedBox(
              width: width,
              // color: nb3,
              child: const Text(
                'News App \nSystem App \nComplete App with Private Server and any idea .',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              )),
        ),
      ],
    );
  }
}
