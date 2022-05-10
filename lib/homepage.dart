import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/color.dart';
import 'package:url_launcher/url_launcher.dart';

import 'leftside.dart';
import 'rightside.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
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

  void showMyApp() async {
    String url() {
      if (Platform.isAndroid) {
        // add the [https]
        // print("https://play.google.com/store/apps/collection/cluster?clp=igNJChkKEzgzMjU1NTgzMzE5Nzc4MzgxNDkQCBgDEioKJGNvbS5tYXNhaGFtZGV2LnNhdWRpX2xpZ2FfbWFzYWhhbWRldhABGAMYAQ%3D%3D:S:ANO1ljKGDAo&gsr=CkyKA0kKGQoTODMyNTU1ODMzMTk3NzgzODE0ORAIGAMSKgokY29tLm1hc2FoYW1kZXYuc2F1ZGlfbGlnYV9tYXNhaGFtZGV2EAEYAxgB:S:ANO1ljIwxHk");
        return "https://play.google.com/store/apps/collection/cluster?clp=igNJChkKEzgzMjU1NTgzMzE5Nzc4MzgxNDkQCBgDEioKJGNvbS5tYXNhaGFtZGV2LnNhdWRpX2xpZ2FfbWFzYWhhbWRldhABGAMYAQ%3D%3D:S:ANO1ljKGDAo&gsr=CkyKA0kKGQoTODMyNTU1ODMzMTk3NzgzODE0ORAIGAMSKgokY29tLm1hc2FoYW1kZXYuc2F1ZGlfbGlnYV9tYXNhaGFtZGV2EAEYAxgB:S:ANO1ljIwxHk"; // new line
      }
      if (Platform.isIOS) {
        // add the [https]
        return "https://play.google.com/store/apps/collection/cluster?clp=igNJChkKEzgzMjU1NTgzMzE5Nzc4MzgxNDkQCBgDEioKJGNvbS5tYXNhaGFtZGV2LnNhdWRpX2xpZ2FfbWFzYWhhbWRldhABGAMYAQ%3D%3D:S:ANO1ljKGDAo&gsr=CkyKA0kKGQoTODMyNTU1ODMzMTk3NzgzODE0ORAIGAMSKgokY29tLm1hc2FoYW1kZXYuc2F1ZGlfbGlnYV9tYXNhaGFtZGV2EAEYAxgB:S:ANO1ljIwxHk"; // new line
      }
      if (Platform.isFuchsia) {
        // add the [https]
        return "https://play.google.com/store/apps/collection/cluster?clp=igNJChkKEzgzMjU1NTgzMzE5Nzc4MzgxNDkQCBgDEioKJGNvbS5tYXNhaGFtZGV2LnNhdWRpX2xpZ2FfbWFzYWhhbWRldhABGAMYAQ%3D%3D:S:ANO1ljKGDAo&gsr=CkyKA0kKGQoTODMyNTU1ODMzMTk3NzgzODE0ORAIGAMSKgokY29tLm1hc2FoYW1kZXYuc2F1ZGlfbGlnYV9tYXNhaGFtZGV2EAEYAxgB:S:ANO1ljIwxHk"; // new line
      } else {
        return '';
      }
    }

    await launch(url());
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
                  child: SizedBox(
                    width: width * .5,
                    child: Column(
                      children: [
                        const Text(
                          'Hamza Ayed ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 44,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'Mobile App Develpoers',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: SizedBox(
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () async {
                                      callPhone('+962798583052');
                                    },
                                    icon: const Icon(Icons.phone)),
                                const Text('+962798583052'),
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
                                      emailSent();
                                    },
                                    icon: const Icon(Icons.email)),
                                const Text('adshamzamac@gmail.com'),
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
                                      // Navigator.push(context, MaterialPageRoute(
                                      //   builder: (context) {
                                      //     return Scaffold(
                                      //       appBar: AppBar(
                                      //         title: Text('My Project'),

                                      //       ),body:Container(color: nb2,child: ,)
                                      //     );
                                      //   },
                                      // ));
                                      showMyApp();
                                    },
                                    icon: const Icon(
                                        Icons.production_quantity_limits)),
                                const Text('MY Projects'),
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
                                      showMyApp();
                                    },
                                    icon: const Icon(Icons.map)),
                                const Text('Jordan - Zarqa'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 370,
                  child: Stack(
                    children: [
                      Positioned(
                        right: 3,
                        child: Container(
                          // decoration: BoxDecoration(),
                          color: const Color(0xfff8d3b9),
                          height: 370,
                          width: 140,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 35, right: 10),
                        child: CircleAvatar(
                          radius: 120,
                          // minRadius: 110,
                          // maxRadius: 140,
                          backgroundColor: const Color(0xffd7a48f),
                          child: Image.asset(
                            'assets/286E845C-6E12-41F8-9B16-24E0C3E96050.JPG',
                            height: 200,
                            width: width * .4,
                          ),
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
