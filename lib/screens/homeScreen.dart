import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:CanLi/screens/signup.dart';
import 'package:CanLi/screens/profile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      // color: Colors.white,
      child: Column(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width / 1.6,
            ),
        // -------------------------------------
        //  Column(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width + 151,
              decoration: BoxDecoration(
                  color: Color(0xFFF2F2FA),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(100), topRight: Radius.circular(100))),
              child: Column(children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 85, 20, 10),
                  height: 65,
                  width: MediaQuery.of(context).size.width - 20,
                  // decoration: BoxDecoration(
                  //     color: Colors.indigo, borderRadius: BorderRadius.circular(25)),
                  child: OutlinedButton(
                    child: Text("Question Bank"),
                    style: OutlinedButton.styleFrom(textStyle: TextStyle(fontSize: 20) ,padding: EdgeInsets.fromLTRB(30,0, 0, 0) ,alignment: Alignment.centerLeft ,foregroundColor: Colors.white,backgroundColor: Colors.indigo,shape: const StadiumBorder(),
                      side: const BorderSide(width: 2, color: Colors.white),),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUpScreen() ),
                      );
                    },
                  ),
                  // color: Colors.orange,
                  ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                  height: 65,
                  width: MediaQuery.of(context).size.width - 20,
                  // decoration: BoxDecoration(
                  //     color: Colors.indigo, borderRadius: BorderRadius.circular(25)),
                  child: OutlinedButton(
                    child: Text("Practise Test"),
                    style: OutlinedButton.styleFrom(textStyle: TextStyle(fontSize: 20) ,padding: EdgeInsets.fromLTRB(30,0, 0, 0) ,alignment: Alignment.centerLeft ,foregroundColor: Colors.white,backgroundColor: Colors.indigo,shape: const StadiumBorder(),
                      side: const BorderSide(width: 2, color: Colors.white),),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUpScreen() ),
                      );
                    },
                  ),

                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                  height: 65,
                  width: MediaQuery.of(context).size.width - 20,
                  // decoration: BoxDecoration(
                  //     color: Colors.indigo, borderRadius: BorderRadius.circular(25)),
                  child: OutlinedButton(
                    child: Text("Module Based Learning"),
                    style: OutlinedButton.styleFrom(textStyle: TextStyle(fontSize: 20) ,padding: EdgeInsets.fromLTRB(30,0, 0, 0) ,alignment: Alignment.centerLeft ,foregroundColor: Colors.white,backgroundColor: Colors.indigo,shape: const StadiumBorder(),
                      side: const BorderSide(width: 2, color: Colors.white),),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUpScreen() ),
                      );
                    },
                  ),

                ),


                Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                  // padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                  height: 65,
                  width: MediaQuery.of(context).size.width - 20,
                  // decoration: BoxDecoration(
                  //     color: Colors.indigo, borderRadius: BorderRadius.circular(25)),
                  child: OutlinedButton(
                    child: Text("Stared Notes"),
                    style: OutlinedButton.styleFrom(textStyle: TextStyle(fontSize: 20) ,padding: EdgeInsets.fromLTRB(30,0, 0, 0) ,alignment: Alignment.centerLeft ,foregroundColor: Colors.white,backgroundColor: Colors.indigo,shape: const StadiumBorder(),
                      side: const BorderSide(width: 2, color: Colors.white),),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FeedbackScreen() ),
                      );
                    },
                  ),
                ),


                Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 20, 10),

                  height: 65,
                  width: MediaQuery.of(context).size.width - 20,
                  // decoration: BoxDecoration(
                  //     color: Colors.indigo, borderRadius: BorderRadius.circular(25)),
                  child: OutlinedButton(
                    child: Text("Challenge Bank"),
                    style: OutlinedButton.styleFrom(textStyle: TextStyle(fontSize: 20) ,padding: EdgeInsets.fromLTRB(30,0, 0, 0) ,alignment: Alignment.centerLeft ,foregroundColor: Colors.white,backgroundColor: Colors.indigo,shape: const StadiumBorder(),
                      side: const BorderSide(width: 2, color: Colors.white),),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUpScreen() ),
                      );
                    },
                  ),

                ),

              ],),
            ),
      ],
      ),
      // --------------------------------------
    ));
  }
}