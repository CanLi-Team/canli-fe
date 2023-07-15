import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

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
              decoration: const BoxDecoration(
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
              decoration: const BoxDecoration(
                  color: Color(0xFFF2F2FA),
                  // color: Colors.amber,
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
                          color: Color(0XFF1D2749),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              debugPrint('Card tapped.');
                            },
                            child: SizedBox(
                              width: 300,
                              height: 120,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Expanded(
                                    flex: 1,
                                    child: Text(
                                      "About Licensing System",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Image.asset(
                                      "images/logo/licensing_system.png",
                                      fit: BoxFit.fill,
                                      alignment: Alignment.center,
                                      ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 25.0),
                        child: Card(
                          clipBehavior: Clip.hardEdge,
                          color: Color(0XFF1D2749),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              debugPrint('Card tapped.');
                            },
                            child: SizedBox(
                              width: 300,
                              height: 120,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Expanded(
                                    flex: 1,
                                    child: Text(
                                      "Road Signs",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Image.asset(
                                      "images/logo/road_sign.png",
                                      fit: BoxFit.fill,
                                      alignment: Alignment.center,
                                      ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 25.0),
                        child: Card(
                          clipBehavior: Clip.hardEdge,
                          color: Color(0XFF1D2749),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              debugPrint('Card tapped.');
                            },
                            child: SizedBox(
                              width: 300,
                              height: 120,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Expanded(
                                    flex: 1,
                                    child: Text(
                                      "Fines, Limites & Points",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Image.asset(
                                      "images/logo/fines_limits.png",
                                      fit: BoxFit.fill,
                                      alignment: Alignment.center,
                                      ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
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
