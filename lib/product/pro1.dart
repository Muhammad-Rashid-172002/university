import 'package:flutter/material.dart';

class Pro1 extends StatefulWidget {
  const Pro1({super.key});

  @override
  State<Pro1> createState() => _Pro1State();
}

class _Pro1State extends State<Pro1> {
  List name = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_outlined),
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
        ],
      ),
    );
  }
}
