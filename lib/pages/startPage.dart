// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:remidial_app_1/pages/homePage.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 1000,
            height: 500,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)
              )
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              child: Text(
            textAlign: TextAlign.center,
            'Complete your grocery need easily',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
          )),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, foregroundColor: Colors.white),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Get Started'),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.arrow_right_alt_sharp)
                ],
              ))
        ],
      ),
    );
  }
}
