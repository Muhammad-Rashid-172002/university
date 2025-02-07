import 'package:flutter/material.dart';
import 'package:flutter_app/product/p1.dart';
import 'package:flutter_app/product/p10.dart';
import 'package:flutter_app/product/p2.dart';
import 'package:flutter_app/product/p3.dart';
import 'package:flutter_app/product/p4.dart';
import 'package:flutter_app/product/p5.dart';
import 'package:flutter_app/product/p6.dart';
import 'package:flutter_app/product/p7.dart';
import 'package:flutter_app/product/p8.dart';
import 'package:flutter_app/product/p9.dart';

class Pro1 extends StatefulWidget {
  const Pro1({super.key});

  @override
  State<Pro1> createState() => _Pro1State();
}

class _Pro1State extends State<Pro1> {
  List product = [
    {'title': 'Tomato', 'page': P1()},
    {'title': 'Potato', 'page': P2()},
    {'title': 'Cabbage', 'page': P3()},
    {'title': 'Carrot', 'page': P4()},
    {'title': 'Onion', 'page': P5()},
    {'title': 'Green Peas', 'page': P6()},
    {'title': 'Garlic', 'page': P7()},
    {'title': 'Brinjal', 'page': P8()},
    {'title': 'Mushroom', 'page': P9()},
    {'title': 'Bitter gourd', 'page': P10()}
  ];
  List color = [];
  List image = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2eq2ovn8jAuXdRaLst8Xi4Se8Ua85r3lkkg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI_F8I2gJ-dqYxprIu3IpgyZMjVg3DvQhieQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFSDqA7IITzx6yDDSYXm02-dqWFd4wDwxV8g&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnBh7WSnfugUVdcGVtK_KuO9tOoRb9yuC0Sw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVJvNHpkxXUZ8sxAWLN5njITwoBXrmO80ebw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSglZb3_EEGmzzkTfqmoajHhkL4isnP7IZQYw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0rRV70i458NK0dVwz3PvnQXLtWkbQ43sfJQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd51q_u7i9f2VPJct5uLHUoMq-vucRbvb9ZA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAl6dMFyzcTpVV5sXKfDqtgA8ytZmgmwZ9yQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJ5SFHuzFggFtUOUK_wE3X295TEy7RSb4pgQ&s',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        title: Text('Vegetables'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 30,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search',
                      suffixIcon: Icon(Icons.filter_list),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5),
                  itemCount: product.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => product[index]['page']));
                      },
                      child: Container(
                        height: 100,
                        color: const Color.fromARGB(255, 179, 247, 214),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 130,
                              ),
                              child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Icon(
                                  Icons.badge_outlined,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 110,
                              child: Image.network(
                                image[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              product[index]['title'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
