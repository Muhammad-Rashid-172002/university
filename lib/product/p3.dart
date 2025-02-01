import 'package:flutter/material.dart';

class P3 extends StatefulWidget {
  const P3({super.key});

  @override
  State<P3> createState() => _P3State();
}

class _P3State extends State<P3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              height: 300,
              width: 350,
              child: Image(
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFSDqA7IITzx6yDDSYXm02-dqWFd4wDwxV8g&s',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Row(
              children: [
                Text(
                  'Cabbage',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 237),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  'Rs, 250 Kg',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.star_rate,
                color: Colors.amber,
              ),
              Icon(
                Icons.star_rate,
                color: Colors.amber,
              ),
              Icon(
                Icons.star_rate,
                color: Colors.amber,
              ),
              Icon(
                Icons.star_rate,
                color: Colors.amber,
              ),
              Icon(Icons.star_rate_outlined),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Discription',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                    'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Sed do eiusmod tempor incididunt\n ut labore et dolore magna aliqua.')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Similar Product',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 60,
                  width: 60,
                  color: Colors.greenAccent,
                  child: Image(image: AssetImage('assets/10.png'))),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 60,
                width: 60,
                color: Colors.greenAccent,
                child: Image.asset('assets/6.png'),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                  height: 60,
                  width: 60,
                  color: Colors.greenAccent,
                  child: Image.asset('assets/7.png')),
              SizedBox(
                width: 20,
              ),
              Container(
                  height: 60,
                  width: 60,
                  color: Colors.greenAccent,
                  child: Image.asset('assets/4.png')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Red '),
              SizedBox(
                width: 27,
              ),
              Text('Yellow '),
              SizedBox(
                width: 27,
              ),
              Text('Chopped '),
              SizedBox(
                width: 27,
              ),
              Text('Cherry ')
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(100)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '1kg',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadiusDirectional.circular(100)),
                  child: Center(
                      child: Text(
                    'Add to Chart',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
