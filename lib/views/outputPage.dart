import 'package:flutter/material.dart';

class OutPutPage extends StatefulWidget {
  @override
  State<OutPutPage> createState() => _OutPutPageState();
}

class _OutPutPageState extends State<OutPutPage> {
  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 246, 240),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(sizeW / 19.65, sizeH / 13.3125, 0, 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'result',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
