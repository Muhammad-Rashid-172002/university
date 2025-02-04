import 'package:flutter/material.dart';
import 'package:flutter_app/product/pro1.dart';
import 'package:flutter_app/product2/pr1.dart';
import 'package:flutter_app/product2/pro10.dart';
import 'package:flutter_app/product2/pro2.dart';
import 'package:flutter_app/product2/pro3.dart';
import 'package:flutter_app/product2/pro4.dart';
import 'package:flutter_app/product2/pro5.dart';
import 'package:flutter_app/product2/pro6.dart';
import 'package:flutter_app/product2/pro7.dart';
import 'package:flutter_app/product2/pro8.dart';
import 'package:flutter_app/product2/pro9.dart';

class Product2 extends StatefulWidget {
  const Product2({super.key});

  @override
  State<Product2> createState() => _Product2State();
}

class _Product2State extends State<Product2> {
  List image = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAxQVVS6aGd9KunDLXeD_hUBiB9E8Ca-dTUw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmezDtWISW4-PGpZzZDEzgxOJWle1DRWJTIQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKMWzkXmP0JSLzhA4kXbaG1jVj5ap4dAj1nw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqKe5TRp9aEql_vR4jWF6JvzjVVd3qsaagHQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgFHKfaISUWVLcI8HEnGQJ4mhKMOMfAT6ebw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQo2MBPe83myiQCOKUlq8KP59r_2LEOjPhXWA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwlkX9q5swR59Gg5HLywzJyNskJbPf8NNnVw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd0pnjzlh5KCTjAped7UclbktH8leFrk0gRg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmezDtWISW4-PGpZzZDEzgxOJWle1DRWJTIQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2Sj9AA0Fn77bZXyX7_-xjjAuBWbasc2z_tA&s',
  ];
  List product = [
    {'title': 'Mango', 'page': Pr1()},
    {'title': 'Peach', 'page': Pro2()},
    {'title': 'Apple', 'page': Pro3()},
    {'title': 'Strawbrrey', 'page': Pro4()},
    {'title': 'Banana', 'page': Pro5()},
    {'title': 'Kiwi', 'page': Pro6()},
    {'title': 'Pear', 'page': Pro7()},
    {'title': 'Strawberrey', 'page': Pro8()},
    {'title': 'Peach', 'page': Pro9()},
    {'title': 'Lychee', 'page': Pro10()}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_outlined),
        title: Text('Fruits'),
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
