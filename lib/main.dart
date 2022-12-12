import 'package:flutter/material.dart';
import 'package:portfolio/login.dart';
import 'package:portfolio/signup.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const HomeRoute(),
      '/second': (context) => const SecondRoute(),
      '/third': (context) => const ThirdRoute(),
    },
  )); //MaterialApp
}

class HomeRoute extends StatelessWidget {
  const HomeRoute({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/flower.jpg"), fit: BoxFit.cover)),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.only(top: 120)),
                  Text(
                    "Welcome",
                    style: TextStyle(
                        fontFamily: 'Orpheus',
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 50),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        const Text(
                          'Please Log In Your Account',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),


                        // ElevatedButton(
                        //   onPressed: _launchUrl, child: const Text(
                        //     'Press Me',
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.pushNamed(context, '/second');
                    },
                    color: Colors.lightBlueAccent,
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(40)),
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.pushNamed(context, '/third');
                    },
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.black12,
                        ),
                        borderRadius: BorderRadius.circular(0)),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Login or Sign Up?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
