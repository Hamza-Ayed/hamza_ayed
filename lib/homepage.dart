import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/color.dart';
import 'package:flutter_application_1/neo.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'leftside.dart';
import 'rightside.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final Uri _url = Uri.parse(
      'https://play.google.com/store/apps/collection/cluster?clp=igNJChkKEzgzMjU1NTgzMzE5Nzc4MzgxNDkQCBgDEioKJGNvbS5tYXNhaGFtZGV2LnNhdWRpX2xpZ2FfbWFzYWhhbWRldhABGAMYAQ%3D%3D:S:ANO1ljKGDAo&gsr=CkyKA0kKGQoTODMyNTU1ODMzMTk3NzgzODE0ORAIGAMSKgokY29tLm1hc2FoYW1kZXYuc2F1ZGlfbGlnYV9tYXNhaGFtZGV2EAEYAxgB:S:ANO1ljIwxHk');
  final Uri linkedin = Uri.parse('https://www.linkedin.com/in/hamza-ayed/');
  final Uri github = Uri.parse('https://github.com/hamzaayed1');
  final Uri youtube =
      Uri.parse('https://www.youtube.com/channel/UCebMwlc7wQw10Z88jwsrMHQ');
  final Uri udemy = Uri.parse('https://www.udemy.com/user/hamza-ayed-2/');
  Future callPhone(String phoneNumber) async {
    await launch("tel://$phoneNumber");
  }

  Future emailSent() async {
    // await launch(
    //     "mailto:masahamdev@gmail.com?subject=HellofromCV &body=IhaveseenyourCV");

    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'masahamdev@gmail.com',
      query: 'I have seen your CV',
    );

    launchUrl(emailLaunchUri);
  }

  void showMyApp(Uri url) async {
    if (!await launchUrl(url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Hamza Ayed Info'),
      // ),
      backgroundColor: const Color(0xfff9f0e7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: NeomphormDark(
                    color: sa5,
                    width: .34,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 35, right: 10),
                              child: CircleAvatar(
                                radius: 80,
                                // minRadius: 110,
                                // maxRadius: 140,
                                backgroundColor: Color(0xffd7a48f),
                                backgroundImage: AssetImage(
                                  'assets/hm.png',
                                ),
                              ),
                            ),
                            Column(
                              children: const [
                                Text(
                                  'Hamza Ayed ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 44,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Full Stack Develpoers\nFlutter ,PHP ,MYSQL\nPyhton Flask',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 22),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            NeomphormDark(
                              width: .2,
                              color: nb3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      TextButton.icon(
                                          onPressed: () =>
                                              callPhone('+962798583052'),
                                          icon: const FaIcon(
                                            FontAwesomeIcons.phone,
                                            color: Colors.green,
                                          ),
                                          label: Text(
                                            '962798583052',
                                            style: tilte1Styleblack,
                                          ))
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: SizedBox(
                                      child: Row(
                                        children: [
                                          TextButton.icon(
                                              onPressed: () => showMyApp(_url),
                                              icon: const FaIcon(
                                                FontAwesomeIcons.googlePlay,
                                                color: Colors.black,
                                              ),
                                              label: Text(
                                                'MY Apps',
                                                style: tilte1Styleblack,
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: SizedBox(
                                      child: Row(
                                        children: [
                                          TextButton.icon(
                                              onPressed: () => showMyApp(_url),
                                              icon: const Icon(
                                                Icons.email,
                                                color: Colors.blue,
                                              ),
                                              label: Text(
                                                'adshamzamac@gmail.com',
                                                style: tilte1Styleblack,
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: SizedBox(
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () async {
                                                showMyApp(linkedin);
                                              },
                                              icon: const Icon(Icons.map)),
                                          Text(
                                            'Jordan - Zarqa',
                                            style: tilte1Styleblack,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            NeomphormDark(
                              width: .1,
                              color: Colors.white24,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        TextButton.icon(
                                            onPressed: () => showMyApp(udemy),
                                            icon: const FaIcon(
                                              FontAwesomeIcons.uber,
                                              color: Colors.black,
                                            ),
                                            label: Text(
                                              'Udemy',
                                              style: tilte1Styleblack,
                                            ))
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: SizedBox(
                                      child: Row(
                                        children: [
                                          TextButton.icon(
                                              onPressed: () =>
                                                  showMyApp(github),
                                              icon: const FaIcon(
                                                FontAwesomeIcons.github,
                                                color: Colors.black,
                                              ),
                                              label: Text(
                                                'GitHub',
                                                style: tilte1Styleblack,
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: SizedBox(
                                      child: Row(
                                        children: [
                                          TextButton.icon(
                                              onPressed: () =>
                                                  showMyApp(youtube),
                                              icon: const FaIcon(
                                                FontAwesomeIcons.youtube,
                                                color: Colors.red,
                                              ),
                                              label: Text(
                                                'YouTube',
                                                style: tilte1Styleblack,
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: SizedBox(
                                      child: Row(
                                        children: [
                                          TextButton.icon(
                                              onPressed: () =>
                                                  showMyApp(linkedin),
                                              icon: const FaIcon(
                                                  FontAwesomeIcons.linkedin),
                                              label: Text(
                                                'LinkedIn',
                                                style: tilte1Styleblack,
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .2,
                  child: Html(
                    data: """
   <iframe width="300" height="200" src="https://www.youtube-nocookie.com/embed/SDOS0D1sheg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
   """,
                  ),
                ),
                Container(
                  color: nb2,
                  width: MediaQuery.of(context).size.width * .1,
                  height: 370,
                  child: Stack(
                    children: [
                      Positioned(
                        right: 3,
                        child: Container(
                          // decoration: BoxDecoration(),
                          color: const Color(0xfff8d3b9),
                          height: 370,
                          width: 80, child: Text('data'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LeftSide(
                    width: width * .45,
                  ),
                  RightSide(
                    width: width * .45,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
