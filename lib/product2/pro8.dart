import 'package:flutter/material.dart';

class Pro8 extends StatefulWidget {
  const Pro8({super.key});

  @override
  State<Pro8> createState() => _Pro8State();
}

class _Pro8State extends State<Pro8> {
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
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd0pnjzlh5KCTjAped7UclbktH8leFrk0gRg&s',
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
                  'Strawberry',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 218),
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
                  'Rs, 350 Kg',
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
                child: Image.asset('assets/11.png'),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 60,
                width: 60,
                color: Colors.greenAccent,
                child: Image.asset('assets/21.png'),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                  height: 60,
                  width: 60,
                  color: Colors.greenAccent,
                  child: Image.asset('assets/12.png')),
              SizedBox(
                width: 20,
              ),
              Container(
                  height: 60,
                  width: 60,
                  color: Colors.greenAccent,
                  child: Image.asset('assets/19.png')),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Text('Pineapple'),
                SizedBox(
                  width: 27,
                ),
                Text('Staberry'),
                SizedBox(
                  width: 27,
                ),
                Text('Watermelon'),
                SizedBox(
                  width: 27,
                ),
                Text('Barry')
              ],
            ),
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
