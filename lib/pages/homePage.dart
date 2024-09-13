// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, use_super_parameters

import 'package:flutter/material.dart';
import 'package:remidial_app_1/widgets/categoryitem.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.only(left: 6.0),
            child: Column(
              children: [
                Text(
                  textAlign: TextAlign.left,
                  'Your Balance',
                  style: TextStyle(fontSize: 20),
                  softWrap: false,
                  overflow: TextOverflow.visible,
                ),
                Text(
                  '\$1,700.00',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  softWrap: false,
                  overflow: TextOverflow.visible,
                )
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: CircleAvatar(
                backgroundColor: Colors.green,
              ),
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Container(
                  width: 323,
                  height: 169,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, bottom: 10),
                      child: Container(
                          width: 198,
                          child: Text(
                            'Buy Orange 10 Kg get Discount 25%',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )),
                    ),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'For You',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            CategoryWidget(),
          ],
        ),
      ),
    );
  }
}
