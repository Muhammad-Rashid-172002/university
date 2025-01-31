import 'package:flutter/material.dart';

class PepsiLogo extends StatefulWidget {
  const PepsiLogo({super.key});

  @override
  State<PepsiLogo> createState() => _PepsiLogoState();
}

class _PepsiLogoState extends State<PepsiLogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(color: Colors.green),
            child: Image.asset(
              'assets/imag.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Papsi Logo',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 30,
            width: 270,
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 30,
            width: 270,
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          SizedBox(
            height: 90,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text('Button 1')),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  'Button 2',
                  style: TextStyle(color: Colors.white),
                )),
              )
            ],
          )
        ],
      ),
    );
  }
}
