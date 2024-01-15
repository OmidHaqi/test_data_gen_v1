import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:test_data_gen/views/pages/home_page.dart';
import 'package:test_data_gen/views/res/paths.dart';
import 'package:test_data_gen/views/res/strings.dart';

class MySplash extends StatefulWidget {
  const MySplash({super.key});

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  bool isConnected = true;

  @override
  void initState() {
    super.initState();
    Connectivity().onConnectivityChanged.listen((connectivityResult) {
      setState(() {
        isConnected = connectivityResult != ConnectivityResult.none;
        if (isConnected) {
          Navigator.pushReplacement(
            context,
            CupertinoPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: isConnected
            ? FutureBuilder(
                future: Future.delayed(Duration(seconds: 3)),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return BottomSheet(
                      
                      onClosing: () {
                        Navigator.of(context).pop();
                      },
                      
                      builder: (context) {
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(Paths.img_checknetwork),
                              const Text(
                                "Oops!! please check network!",
                                style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 20,),
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    
                                  });
                                },
                                child: const Text("Try again",
                                style: TextStyle(color: Colors.white),),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  } else {
                    return Center(
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
                        const Text(Strings.splash,
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold))
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 100),
                      child: SpinKitRing(
                        size: 45,
                        color: Color.fromARGB(255, 68, 164, 126),
                      ),
                    ),
                  ],
                ),
              );
                  }
                },
              )
            : Center(
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
                        const Text(Strings.splash,
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold))
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 100),
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
