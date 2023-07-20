import 'package:CanLi/screens/edit_profile.dart';
import 'package:CanLi/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:CanLi/screens/signup.dart';
import 'package:CanLi/screens/progressBar.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 1,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.indigo,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const HomeScreen()));
            },
          ),
        ),
        body: SingleChildScrollView(
          // color: Colors.white,
          child: Column(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width - 220,
              child: ListView(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Stack(
                      children: [
                        Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 4,
                                  color: Colors.indigo),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    color: Colors.black.withOpacity(0.1),
                                    offset: Offset(0, 10))
                              ],
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    "",
                                  ))),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 4,
                                  color: Theme.of(context).scaffoldBackgroundColor,
                                ),
                                color: Colors.indigo,
                              ),
                              child: Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                            )),
                      ],
                    ),
                  ),
                  Center(
                    child: Text(
                      "Name",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500,),
                    ),
                  )
                ],
              ),

            ),
            // -------------------------------------
            //  Column(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height+151,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              decoration: BoxDecoration(
                  color: Color(0xFFF2F2FA),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(100), topRight: Radius.circular(100))),
              child: Column(children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 85, 20, 10),
                  height: 65,
                  width: MediaQuery.of(context).size.width - 20,
                  decoration: BoxDecoration(
                      color: Colors.indigo, borderRadius: BorderRadius.circular(25)),
                  child: Row(children: [
                    Container(
                      height: 65,
                      width: MediaQuery.of(context).size.width - 130,
                      child: OutlinedButton(
                        child: Text("Edit Profile"),
                        style: OutlinedButton.styleFrom(textStyle: TextStyle(fontSize: 20) ,padding: EdgeInsets.fromLTRB(30,0, 10, 0) ,alignment: Alignment.centerLeft ,foregroundColor: Colors.white,backgroundColor: Colors.indigo,shape: const StadiumBorder(),side: BorderSide(color: Colors.transparent),),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => editProfile() ),
                          );
                        },
                      ),
                    ),
                    Container(
                      child: OutlinedButton(
                        child: Image.asset("images/logo/bookmark question.png"),
                        style: OutlinedButton.styleFrom(alignment: Alignment.centerRight, padding: EdgeInsets.fromLTRB(5,0, 0, 0) ,backgroundColor: Colors.indigo,shape: const StadiumBorder(), side: BorderSide(color: Colors.transparent)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => editProfile() ),
                          );
                        },
                      ),
                    )
                  ],),
                  // ),
                  // color: Colors.orange,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                  height: 65,
                  width: MediaQuery.of(context).size.width - 20,
                  decoration: BoxDecoration(
                      color: Colors.indigo, borderRadius: BorderRadius.circular(25)),
                  child: Row(children: [
                    Container(
                      height: 65,
                      width: MediaQuery.of(context).size.width - 130,
                      child: OutlinedButton(
                        child: Text("Contact"),
                        style: OutlinedButton.styleFrom(textStyle: TextStyle(fontSize: 20) ,padding: EdgeInsets.fromLTRB(30,0, 10, 0) ,alignment: Alignment.centerLeft ,foregroundColor: Colors.white,backgroundColor: Colors.indigo,shape: const StadiumBorder(),side: BorderSide(color: Colors.transparent),),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProgressIndicatorApp() ),
                          );
                        },
                      ),
                    ),
                    Container(
                      child: OutlinedButton(
                        child: Image.asset("images/logo/practise test.png"),
                        style: OutlinedButton.styleFrom(alignment: Alignment.centerRight, padding: EdgeInsets.fromLTRB(5,0, 0, 0) ,backgroundColor: Colors.indigo,shape: const StadiumBorder(), side: BorderSide(color: Colors.transparent)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProgressIndicatorApp() ),
                          );
                        },
                      ),
                    )
                  ],),
                  // ),
                  // color: Colors.orange,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                  height: 65,
                  width: MediaQuery.of(context).size.width - 20,
                  decoration: BoxDecoration(
                      color: Colors.indigo, borderRadius: BorderRadius.circular(25)),
                  child: Row(children: [
                    Container(
                      height: 65,
                      width: MediaQuery.of(context).size.width - 130,
                      child: OutlinedButton(
                        child: Text("Reset all progress"),
                        style: OutlinedButton.styleFrom(textStyle: TextStyle(fontSize: 20) ,padding: EdgeInsets.fromLTRB(30,0, 10, 0) ,alignment: Alignment.centerLeft ,foregroundColor: Colors.white,backgroundColor: Colors.indigo,shape: const StadiumBorder(),side: BorderSide(color: Colors.transparent),),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProgressIndicatorApp() ),
                          );
                        },
                      ),
                    ),
                    Container(
                      child: OutlinedButton(
                        child: Image.asset("images/logo/module based.png"),
                        style: OutlinedButton.styleFrom(alignment: Alignment.centerRight, padding: EdgeInsets.fromLTRB(8,6,0, 5) ,backgroundColor: Colors.indigo,shape: const StadiumBorder(), side: BorderSide(color: Colors.transparent)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProgressIndicatorApp() ),
                          );
                        },
                      ),
                    )
                  ],),
                  // ),
                  // color: Colors.orange,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                  height: 65,
                  width: MediaQuery.of(context).size.width - 20,
                  decoration: BoxDecoration(
                      color: Colors.indigo, borderRadius: BorderRadius.circular(25)),
                  child: Row(children: [
                    Container(
                      height: 65,
                      width: MediaQuery.of(context).size.width - 130,
                      child: OutlinedButton(
                        child: Text("Privacy & Terms"),
                        style: OutlinedButton.styleFrom(textStyle: TextStyle(fontSize: 20) ,padding: EdgeInsets.fromLTRB(30,0, 10, 0) ,alignment: Alignment.centerLeft ,foregroundColor: Colors.white,backgroundColor: Colors.indigo,shape: const StadiumBorder(),side: BorderSide(color: Colors.transparent),),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomeScreen() ),
                          );
                        },
                      ),
                    ),
                    Container(
                      child: OutlinedButton(
                        child: Image.asset("images/logo/bookmarked notes.png"),
                        style: OutlinedButton.styleFrom(alignment: Alignment.centerRight, padding: EdgeInsets.fromLTRB(5,0, 0, 0) ,backgroundColor: Colors.indigo,shape: const StadiumBorder(), side: BorderSide(color: Colors.transparent)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomeScreen() ),
                          );
                        },
                      ),
                    )
                  ],),
                  // ),
                  // color: Colors.orange,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                  height: 65,
                  width: MediaQuery.of(context).size.width - 20,
                  decoration: BoxDecoration(
                      color: Colors.indigo, borderRadius: BorderRadius.circular(25)),
                  child: Row(children: [
                    Container(
                      height: 65,
                      width: MediaQuery.of(context).size.width - 130,
                      child: OutlinedButton(
                        child: Text("Give Feedback"),
                        style: OutlinedButton.styleFrom(textStyle: TextStyle(fontSize: 20) ,padding: EdgeInsets.fromLTRB(30,0, 10, 0) ,alignment: Alignment.centerLeft ,foregroundColor: Colors.white,backgroundColor: Colors.indigo,shape: const StadiumBorder(),side: BorderSide(color: Colors.transparent),),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUpScreen() ),
                          );
                        },
                      ),
                    ),
                    Container(
                      child: OutlinedButton(
                        child: Image.asset("images/logo/challenge bank.png"),
                        style: OutlinedButton.styleFrom(alignment: Alignment.centerRight,padding: EdgeInsets.fromLTRB(0,5, 0, 5) ,backgroundColor: Colors.indigo,shape: const StadiumBorder(), side: BorderSide(color: Colors.transparent)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUpScreen() ),
                          );
                        },
                      ),
                    )
                  ],),
                  // ),
                  // color: Colors.orange,
                ),
              ],),
            ),
          ],
          ),
          // --------------------------------------
        ));
  }
}


// import 'package:CanLi/screens/edit_profile.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:CanLi/screens/homeScreen.dart';
// import 'package:CanLi/screens/profile.dart';
//
// class FeedbackScreen extends StatelessWidget {
//   const FeedbackScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.white,
//       child: Column(children: [
//         Stack(
//           children: [
//             Container(
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.width / 1.6,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//               ),
//               child: Row(
//                 // crossAxisAlignment: CrossAxisAlignment.stretch,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Center(child: Image.asset("images/logo/CanLi_logo.png")),
//                     Column(children: [
//                       Padding(
//                           padding: const EdgeInsets.only(top: 80.0),
//                           child: Text("CANLI",
//                               overflow: TextOverflow.visible,
//                               maxLines: 1,
//                               softWrap: false,
//                               style: TextStyle(
//                                   color: Colors.blue,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 40))),
//                       Text("DL For Everyone",
//                           overflow: TextOverflow.visible,
//                           maxLines: 1,
//                           softWrap: false,
//                           style: TextStyle(
//                               color: Colors.blue,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 14)),
//                     ])
//                   ]),
//             ),
//           ],
//         ),
//         Column(
//           children: [
//             Container(
//               // height: 537.5,
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.width + 145,
//               decoration: BoxDecoration(
//                   color: Color(0xFFF2F2FA),
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(100),
//                       topRight: Radius.circular(100))),
//               child: Column(
//                 // crossAxisAlignment: CrossAxisAlignment.stretch,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Column(children: [
//                       Padding(
//                           padding: const EdgeInsets.only(top: 30.0),
//                           child: Text("Feedback",
//                               overflow: TextOverflow.visible,
//                               maxLines: 1,
//                               // softWrap: false,
//                               style: TextStyle(
//                                   color: Colors.indigo,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 40))),
//                       Padding(
//                           padding: const EdgeInsets.fromLTRB(0, 0, 260, 0),
//                           child: Text("Name",
//                               overflow: TextOverflow.visible,
//                               maxLines: 1,
//                               // softWrap: false,
//                               style: TextStyle(
//                                   color: Colors.indigo,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 20))),
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(40, 5, 40, 0),
//                         child: TextField(
//                           keyboardType: TextInputType.name,
//                           decoration: InputDecoration(
//                             fillColor: Colors.white,
//                             border: InputBorder.none,
//                             focusedBorder: OutlineInputBorder(
//                                 borderRadius:
//                                 BorderRadius.all(Radius.circular(15.0)),
//                                 borderSide: BorderSide(color: Colors.indigo)),
//                             filled: true,
//                             contentPadding: EdgeInsets.only(
//                                 bottom: 10.0, left: 10.0, right: 10.0),
//                             labelText: "EX. NICK JONES",
//                           ),
//                         ),
//                       ),
//                       Padding(
//                           padding: const EdgeInsets.fromLTRB(0, 10, 160, 0),
//                           child: Text("EMAIL ADDRESS",
//                               overflow: TextOverflow.visible,
//                               maxLines: 1,
//                               // softWrap: false,
//                               style: TextStyle(
//                                   color: Colors.indigo,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 20))),
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(40, 5, 40, 0),
//                         child: TextField(
//                           keyboardType: TextInputType.emailAddress,
//                           decoration: InputDecoration(
//                             fillColor: Colors.white,
//                             border: InputBorder.none,
//                             focusedBorder: OutlineInputBorder(
//                                 borderRadius:
//                                 BorderRadius.all(Radius.circular(15.0)),
//                                 borderSide: BorderSide(color: Colors.indigo)),
//                             filled: true,
//                             contentPadding: EdgeInsets.only(
//                                 bottom: 10.0, left: 10.0, right: 10.0),
//                             labelText: "EXAMPLE@GMAIL.COM",
//                           ),
//                         ),
//                       ),
//                       Padding(
//                           padding: const EdgeInsets.fromLTRB(0, 10, 200, 0),
//                           child: Text("FEEDBACK",
//                               overflow: TextOverflow.visible,
//                               maxLines: 1,
//                               // softWrap: false,
//                               style: TextStyle(
//                                   color: Colors.indigo,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 20))),
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(40, 5, 40, 0),
//                         child: TextField(
//                           keyboardType: TextInputType.multiline,
//                           maxLength: 225,
//                           decoration: InputDecoration(
//                             fillColor: Colors.white,
//                             border: InputBorder.none,
//                             focusedBorder: OutlineInputBorder(
//                                 borderRadius:
//                                 BorderRadius.all(Radius.circular(15.0)),
//                                 borderSide: BorderSide(color: Colors.indigo)),
//                             filled: true,
//                             contentPadding: EdgeInsets.only(
//                                 bottom: 20.0, left: 10.0, right: 10.0),
//                             labelText: "ENTER FEEDBACK",
//
//                           ),
//                           maxLines: 6,
//                         ),
//                       ),
//
//                       Padding(
//                           padding: const EdgeInsets.fromLTRB(40, 35, 40, 0),
//                           child: Container(
//                             child: TextButton(
//                               //True if this widget will be selected as the initial focus when no other node in its scope is currently focused.
//                               autofocus: true,
//                               //Called when the button is tapped or otherwise activated.
//                               onPressed: () {
//                                 // ignore: avoid_print
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) =>
//                                        editProfile()),
//                                 );
//                               },
//                               //Customizes this button's appearance
//                               style: TextButton.styleFrom(
//                                   primary: Colors.white,
//                                   backgroundColor:
//                                   Colors.indigo,
//                                   onSurface: Colors.indigo,
//                                   shadowColor: Colors.indigo,
//                                   elevation: 5,
//                                   side: const BorderSide(
//                                       color: Colors.indigo, width: 1),
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(28.0),
//                                   ),
//                                   textStyle: const TextStyle(
//                                     color: Colors.indigo,
//                                     fontSize: 20,
//                                     fontStyle: FontStyle.normal,
//                                   )),
//
//                               //Typically the button's label.
//                               child: const Text("    SUBMIT    ",
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 22),),
//                             ),
//                           ))
//                     ]),
//                   ]),
//             ),
//           ],
//         ),
//       ]),
//     );
//   }
// }