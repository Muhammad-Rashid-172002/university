import 'package:flutter/material.dart';
import 'package:flutter_app/product/pro1.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter_app/product/product2.dart';

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
    return Row(
      children: [Icon(Icons.menu), Icon(Icons.forward)],
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
    return Container(
      height: 20,
      width: 20,
      color: Colors.amber,
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
                      MaterialPageRoute(builder: (context) => Product2()));
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
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(color: Colors.amber),
                  child: Image(
                    image: NetworkImage(
                      'https://images.stockcake.com/public/3/1/0/3106290a-8202-4fbb-adad-1c616d5f59a5_large/fresh-vegetable-basket-stockcake.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(color: Colors.amber),
                  child: Image(
                    image: NetworkImage(
                        'https://static.vecteezy.com/system/resources/previews/033/117/879/non_2x/an-assortment-of-fruits-arranged-in-a-basket-on-a-soft-colored-backdrop-ai-generated-photo.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(color: Colors.amber),
                  child: Image(
                    image: NetworkImage(
                        'https://as2.ftcdn.net/v2/jpg/06/28/34/57/1000_F_628345798_XrRzoeqTgvvxdemhRoZN3fiuu3q0f6BL.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(color: Colors.amber),
                  child: Image(
                    image: NetworkImage(
                        'https://www.indianhealthyrecipes.com/wp-content/uploads/2021/05/fruit-custard-recipe.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 35,
                ),
                Text(
                  'Vegetables',
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Fruites',
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'Fishes',
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'Casted',
                )
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
                      'Best Selling',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 220,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Pro1()));
                      },
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.green,
                      ),
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
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(color: Colors.lightGreen),
                      child: Image(
                        image: NetworkImage(
                            'https://thumbs.dreamstime.com/b/three-lemons-isolated-white-28990417.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(color: Colors.lightGreen),
                      child: Image(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkS7V8r_qmXYJFzHNFeKQKs5X2ugGHsl7d2w&s'),
                        fit: BoxFit.cover,
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
