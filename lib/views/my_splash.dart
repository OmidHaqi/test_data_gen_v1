import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:test_data_gen/views/home_page.dart';
import 'package:test_data_gen/views/res/paths.dart';
import 'package:test_data_gen/views/res/strings.dart';

class MySplash extends StatefulWidget {
  const MySplash({super.key});

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        CupertinoPageRoute(
          builder: (context) => HomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 246, 240),
      body: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Center(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    Paths.imgSplash,
                    height: 330,
                    width: 330,
                  ),
                  Text(Strings.splash,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: SpinKitRing(
                  size: 45,
                  color: Color.fromARGB(255, 68, 164, 126),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
