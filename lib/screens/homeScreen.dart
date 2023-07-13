import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CanLnkefnwjfji'),
        backgroundColor: const Color(0xFF1D2749),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width / 1.6,
            decoration: BoxDecoration(

            ),
          ),
          Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          color: Color(0xFFF2F2FA),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
              topRight: Radius.circular(100))),
              ),
        ],
      )
    );
  }
}

