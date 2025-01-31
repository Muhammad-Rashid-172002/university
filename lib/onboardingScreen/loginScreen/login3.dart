import 'package:flutter/material.dart';
import 'package:flutter_app/onboardingScreen/loginScreen/login4.dart';

class Login3 extends StatefulWidget {
  const Login3({super.key});

  @override
  State<Login3> createState() => _Login3State();
}

class _Login3State extends State<Login3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 10),
            child: Text(
              'Forget Password',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.green),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              height: 45,
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    hintText: 'Mail',
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.black,
                      size: 25,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                textAlignVertical: TextAlignVertical.center,
                keyboardType: TextInputType.multiline,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: Text(
                    'Back to Sing in',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 50),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login4()));
                    },
                    child: Container(
                      height: 40,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          'Send Code',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Row(
                      children: [
                        Expanded(
                            child: Divider(
                          thickness: 1,
                        )),
                        Text('Or Login With'),
                        Expanded(
                            child: Divider(
                          thickness: 1,
                        )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 105),
                    child: Row(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100)),
                          child: Icon(
                            Icons.facebook,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100)),
                            child: Image(
                                image: NetworkImage(
                                    'https://yt3.googleusercontent.com/K8WVrQAQHTTwsHEtisMYcNai7p7XIlyEAdZg86qYw78ye57r5DRemHQ9Te4PcD_v98HB-ZvQjQ=s900-c-k-c0x00ffffff-no-rj'))),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(
                            Icons.apple,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
