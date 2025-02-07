import 'package:flutter/material.dart';

class Catagories extends StatefulWidget {
  const Catagories({super.key});

  @override
  State<Catagories> createState() => _CatagoriesState();
}

class _CatagoriesState extends State<Catagories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        title: Text('Categories'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [Image.asset('assets/a (1).PNG'), Text('Fish')],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [Image.asset('assets/a (2).PNG'), Text('Statio..')],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [Image.asset('assets/a (3).PNG'), Text('Meat')],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [Image.asset('assets/a (4).PNG'), Text('veg..')],
                ),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [Image.asset('assets/a (5).PNG'), Text('Milk')],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [Image.asset('assets/a (6).PNG'), Text('Fruit')],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [Image.asset('assets/a (7).PNG'), Text('Beauty')],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Image.asset('assets/a (8).PNG'),
                    Text('Healty Ca.')
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [Image.asset('assets/a (1).PNG'), Text('Fish')],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [Image.asset('assets/a (1).PNG'), Text('Fish')],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
