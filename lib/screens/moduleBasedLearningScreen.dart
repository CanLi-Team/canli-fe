import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:CanLi/screens/feeback.dart';

class moduleBasedLearningScreen extends StatelessWidget {
  const moduleBasedLearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(children: [
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width / 1.6,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Image.asset("images/logo/CanLi_logo.png")),
                    Column(children: [
                      Padding(
                          padding: const EdgeInsets.only(top: 80.0),
                          child: Text("CANLI",
                              overflow: TextOverflow.visible,
                              maxLines: 1,
                              softWrap: false,
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40))),
                      Text("DL For Everyone",
                          overflow: TextOverflow.visible,
                          maxLines: 1,
                          softWrap: false,
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 14)),
                    ])
                  ]),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              // height: 537.5,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width + 145,
              decoration: BoxDecoration(
                  color: Color(0xFFF2F2FA),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100))),
              child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(children: [
                      Padding(
                        padding: EdgeInsets.only(top: 100.0),
                        child: Card(
                          clipBehavior: Clip.hardEdge,
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              debugPrint('Card tapped.');
                            },
                            child: SizedBox(
                              width: 300,
                              height: 100,
                              child: Row(
                                children: [
                                  Container(
                                    child: Text("About Licensing System"),
                                  ),
                                  Container(
                                    child: Image.asset("images/logo/CanLi_logo.png"),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        // child: Card(
                        //   elevation: 0,
                        //   shape: RoundedRectangleBorder(
                        //     side: BorderSide(
                        //       color: Theme.of(context).colorScheme.outline,
                        //     ),
                        //     borderRadius:
                        //         const BorderRadius.all(Radius.circular(12)),
                        //   ),
                        //   child: const SizedBox(
                        //     width: 300,
                        //     height: 100,
                        //   ),
                        // ),
                      ),
                    ]),
                  ]),
            ),
          ],
        ),
      ]),
    );
  }
}
