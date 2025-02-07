import 'package:flutter/material.dart';
import 'package:flutter_app/onboardingScreen/loginScreen/login.dart';
import 'package:flutter_app/product/catagories.dart';
import 'package:flutter_app/product/pro1.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter_app/product2/product2.dart';

class Product1 extends StatefulWidget {
  const Product1({super.key});

  @override
  State<Product1> createState() => _Product1State();
}

class _Product1State extends State<Product1> {
  int currentindex = 0;
  List pages = [homescreen(), favorityscreen(), cartscreen(), userscreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.lock_outline), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
        currentIndex: currentindex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
      ),
    );
  }
}

class userscreen extends StatelessWidget {
  const userscreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.green),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(100)),
                  child: Image.asset(
                    'assets/23.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                'Muhammad Rashid',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'mrashid@gamil.com',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 50,
          width: 300,
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Icon(Icons.person_2_outlined),
              SizedBox(
                width: 10,
              ),
              Text('My Profile'),
              SizedBox(
                width: 170,
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          width: 300,
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Icon(Icons.location_on_outlined),
              SizedBox(
                width: 10,
              ),
              Text('My Address'),
              SizedBox(
                width: 162,
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          width: 300,
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Icon(Icons.shopping_bag_outlined),
              SizedBox(
                width: 10,
              ),
              Text('My Order'),
              SizedBox(
                width: 180,
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          width: 300,
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Icon(Icons.payment_outlined),
              SizedBox(
                width: 10,
              ),
              Text('Payment'),
              SizedBox(
                width: 180,
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          width: 300,
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Icon(Icons.message_outlined),
              SizedBox(
                width: 10,
              ),
              Text('Message'),
              SizedBox(
                width: 177,
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          width: 300,
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Icon(Icons.settings_outlined),
              SizedBox(
                width: 10,
              ),
              Text('Setting'),
              SizedBox(
                width: 188,
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          width: 300,
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Icon(
                Icons.logout_outlined,
                color: Colors.green,
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text(
                  'Log Out',
                  style: TextStyle(color: Colors.green),
                ),
              ),
              SizedBox(
                width: 185,
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class cartscreen extends StatelessWidget {
  cartscreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30, left: 10),
          child: Row(
            children: [
              Icon(Icons.arrow_back_ios_new),
              SizedBox(
                width: 100,
              ),
              Text(
                'My Cart',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 343,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.green)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset('assets/11.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            Text(
                              'Pineapple',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Tk 90',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 132,
                      ),
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 23,
                              width: 23,
                              color: Colors.green,
                              child: Icon(
                                Icons.add,
                              ),
                            ),
                            Text('1 Pc'),
                            Container(
                              height: 23,
                              width: 23,
                              color: Colors.green,
                              child: Icon(
                                Icons.remove,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 70,
                    width: 343,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.green)),
                    child: Row(
                      children: [
                        Image.asset('assets/13.png'),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Text(
                                'Orange',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Tk 150',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 105,
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 23,
                                width: 23,
                                color: Colors.green,
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                              Text('1 Pc'),
                              Container(
                                height: 23,
                                width: 23,
                                color: Colors.green,
                                child: Icon(
                                  Icons.remove,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 70,
                  width: 343,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.green)),
                  child: Row(
                    children: [
                      Image.asset('assets/12.png'),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            Text(
                              'Watermelon',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Tk 50',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 86,
                      ),
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 23,
                              width: 23,
                              color: Colors.green,
                              child: Icon(
                                Icons.add,
                              ),
                            ),
                            Text('1 Pc'),
                            Container(
                              height: 23,
                              width: 23,
                              color: Colors.green,
                              child: Icon(
                                Icons.remove,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 30),
          child: Row(
            children: [
              Text('Item Schedule'),
              SizedBox(
                width: 200,
              ),
              Text(
                'Tk 510',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            children: [
              Text('Delivery Fee'),
              SizedBox(
                width: 213,
              ),
              Text(
                'Tk 50',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 40,
          width: 220,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 193, 244, 219),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.badge_outlined,
                color: const Color.fromARGB(255, 14, 112, 18),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                'Apply Purchase Code',
                style: TextStyle(color: const Color.fromARGB(255, 14, 112, 18)),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: const Color.fromARGB(255, 14, 112, 18),
              )
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DottedDashedLine(height: 3, width: 340, axis: Axis.horizontal)
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Total Cost',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 200,
            ),
            Text(
              'Tk 560',
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 40,
          width: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.green),
          child: Center(
            child: Text(
              'Processed to Checkedout',
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}

class favorityscreen extends StatelessWidget {
  const favorityscreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, top: 20),
          child: Row(
            children: [
              Icon(Icons.arrow_back),
              SizedBox(
                width: 100,
              ),
              Text(
                'Favoutite',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.greenAccent)),
              child: Row(
                children: [
                  Container(
                      height: 70,
                      width: 70,
                      child: Image.asset('assets/13.png')),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Orenge',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('1Ps')
                    ],
                  ),
                  SizedBox(
                    width: 160,
                  ),
                  Text(
                    'Tk 230',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.green,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 70,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.greenAccent)),
              child: Row(
                children: [
                  Container(
                      height: 70,
                      width: 70,
                      child: Image.asset('assets/12.png')),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Watermelon',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('1Ps')
                    ],
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Text(
                    'Tk 120',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.green,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 70,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.greenAccent)),
              child: Row(
                children: [
                  Container(
                      height: 70,
                      width: 70,
                      child: Image.asset('assets/20.png')),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Kiwi',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('1Ps')
                    ],
                  ),
                  SizedBox(
                    width: 181,
                  ),
                  Text(
                    'Tk 399',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.green,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 70,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.greenAccent)),
              child: Row(
                children: [
                  Container(
                      height: 70,
                      width: 70,
                      child: Image.asset('assets/11.png')),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Pineapple',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('1Ps')
                    ],
                  ),
                  SizedBox(
                    width: 143,
                  ),
                  Text(
                    'Tk 400',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.green,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 70,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.greenAccent)),
              child: Row(
                children: [
                  Container(
                      height: 70,
                      width: 70,
                      child: Image.asset('assets/15.png')),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mango',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('1Ps')
                    ],
                  ),
                  SizedBox(
                    width: 160,
                  ),
                  Text(
                    'Tk 399',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.green,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 70,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.greenAccent)),
              child: Row(
                children: [
                  Container(
                      height: 70,
                      width: 70,
                      child: Image.asset('assets/19.png')),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'black berry',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('1Ps')
                    ],
                  ),
                  SizedBox(
                    width: 135,
                  ),
                  Text(
                    'Tk 290',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.green,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 70,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.greenAccent)),
              child: Row(
                children: [
                  Container(
                      height: 70,
                      width: 70,
                      child: Image.asset('assets/21.png')),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Stabrey',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('1Ps')
                    ],
                  ),
                  SizedBox(
                    width: 158,
                  ),
                  Text(
                    'Tk 300',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.green,
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          height: 40,
          width: 270,
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(50)),
          child: Center(
            child: Text(
              'Add to Cart',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}

class homescreen extends StatelessWidget {
  homescreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          title: Text(
            'Peshware,Ring,Road',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          actions: [
            Icon(
              Icons.notifications_outlined,
              color: Colors.white,
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 100,
              width: 360,
              color: Colors.green,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'Search',
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: Icon(Icons.filter_list),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.multiline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: 330,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      'Get 40% discount on\nyour first order\nfrom app',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Container(
                            height: 150,
                            width: 130,
                            child: Image(
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS125f1a-uUbSkngoCep4Cu-AVAWQX8G7-KrA&s')),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'Categories',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 230,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Catagories()));
                },
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.green,
                ),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: Image(
                          image: NetworkImage(
                            'https://media.istockphoto.com/id/1127420706/photo/fresh-vegetables-in-basket-on-white-isolated-background-top-view.jpg?s=612x612&w=0&k=20&c=U-9e1GUykrLoDumkoXHbfUV-3cBss_9CTUdQy38CTgk=',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        'Vegeta..',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: Image(
                          image: NetworkImage(
                              'https://i.pinimg.com/736x/2b/d9/f3/2bd9f3d20a6de968bff7d46c46f71e23.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        'Fruites',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        child: Image(
                          image: NetworkImage(
                              'https://media.istockphoto.com/id/1064355846/photo/whole-round-yellowtail-fish-or-hamachi-fish-in-the-basket-on-white-background.jpg?s=612x612&w=0&k=20&c=sK9GIpPqsZQG83zvlNfbYtEElq3cY-uBAadtdh5GccE='),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        'Fishes',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: Image(
                          image: NetworkImage(
                              'https://img.pikbest.com/png-images/20240630/wicker-basket-filled-with-raw-meat-and-vegetables_10644644.png!w700wp'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        'Meat',
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Over Products',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 216,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.green,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Pro1()));
                      },
                      child: Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(color: Colors.lightGreen),
                        child: Image(
                          image: NetworkImage(
                              'https://media.istockphoto.com/id/1127420706/photo/fresh-vegetables-in-basket-on-white-isolated-background-top-view.jpg?s=612x612&w=0&k=20&c=U-9e1GUykrLoDumkoXHbfUV-3cBss_9CTUdQy38CTgk='),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Product2()));
                      },
                      child: Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(color: Colors.lightGreen),
                        child: Image(
                          image: NetworkImage(
                              'https://i.pinimg.com/736x/2b/d9/f3/2bd9f3d20a6de968bff7d46c46f71e23.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ))
          ],
        ));
  }
}
