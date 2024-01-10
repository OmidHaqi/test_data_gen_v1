import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_data_gen/views/my_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
     const SystemUiOverlayStyle(
        statusBarColor: Color.fromARGB(255, 204, 238, 221),
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Color.fromARGB(255, 204, 238, 221),
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
    return  MaterialApp(
      theme: ThemeData(
       
        fontFamily: 'Ubuntu'
      ),
      debugShowCheckedModeBanner: false,
      home:const MySplash(),
    );
  }
}
