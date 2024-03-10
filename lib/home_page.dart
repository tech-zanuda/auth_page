import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.sizeOf(context).width;
    double deviceHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Positioned(
              left: -deviceWidth / 2,
              top: deviceHeight / 2 -
                  deviceWidth / 2 +
                  MediaQuery.of(context).padding.top,
              child: Container(
                width: deviceWidth,
                height: deviceWidth,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color(0xff2a469c), width: 100),
                ),
                transform: Matrix4.rotationZ(45 * pi / 180),
                transformAlignment: Alignment.center,
              ),
            ),
            SafeArea(
              top: true,
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 80),
                  Image.asset('assets/logo.png'),
                  const SizedBox(height: 120),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Material(
                      elevation: 10.0,
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none),
                            prefixIcon: const Icon(
                              Icons.person_outline_outlined,
                              color: Color(0xff2a469c),
                            ),
                            filled: true,
                            fillColor: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Material(
                      elevation: 10.0,
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none),
                            prefixIcon: const Icon(
                              Icons.lock_outline,
                              color: Color(0xff2a469c),
                            ),
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.info_outline,
                                  color: Color(0xff2a469c)),
                              onPressed: () {
                                print('Info icon');
                              },
                            ),
                            filled: true,
                            fillColor: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 80),
                  ElevatedButton(
                    onPressed: () {
                      print('Login');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        surfaceTintColor: Colors.transparent,
                        elevation: 15,
                        minimumSize: const Size(340, 65)),
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Color(0xff2a469c), fontSize: 20),
                    ),
                  ),
                  const SizedBox(height: 200),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(
                            Icons.visibility_outlined,
                            color: Color(0xff2a469c),
                            size: 30,
                          ),
                          onPressed: () {
                            print('Visibility icon');
                          },
                        ),
                        const SizedBox(width: 15),
                        IconButton(
                          icon: const Icon(
                            Icons.qr_code_2_outlined,
                            color: Color(0xff2a469c),
                            size: 30,
                          ),
                          onPressed: () {
                            print('Qr code icon');
                          },
                        ),
                        const SizedBox(width: 15),
                        IconButton(
                          icon: const Icon(
                            Icons.mail_outline,
                            color: Color(0xff2a469c),
                            size: 30,
                          ),
                          onPressed: () {
                            print('Mail icon');
                          },
                        ),
                        const SizedBox(width: 15),
                        IconButton(
                          icon: const Icon(
                            Icons.location_on_outlined,
                            color: Color(0xff2a469c),
                            size: 30,
                          ),
                          onPressed: () {
                            print('Location icon');
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
