import 'package:flutter/material.dart';
import 'package:remidial_app_1/pages/productPage.dart';

// ignore: must_be_immutable
class CategoryWidget extends StatelessWidget {
  CategoryWidget({super.key});

  List<String> myCategoryName = [
    'Fruit',
    'Vegetable',
    'Cookies',
    'Meat',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 3/4,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 0; i < myCategoryName.length; i++)
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white, 
                border: Border.all(
                  color: Colors.black
                ),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ProductPage();
                      },
                    ));
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.asset(
                      'images/${i + 1}.jpg',
                      width: 100,
                      height: 100,),
                  ),
                ),
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                alignment: Alignment.center,
                child: Text(
                  myCategoryName[i],
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                  ),
              )
              ],
            ),
          )
      ],
    );
  }
}
