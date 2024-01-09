import 'package:flutter/material.dart';
import 'package:test_data_gen/views/res/strings.dart';

class inputCondition extends StatefulWidget {
  @override
  State<inputCondition> createState() => _inputConditionState();
}

class _inputConditionState extends State<inputCondition> {
  List filds = [];
  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 204, 238, 221),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                  sizeW / 19.65, sizeH / 8.114285714, sizeW / 19.65, 0),
              child: Container(
                height: sizeH / 6.042553191,
                width: sizeW / 1.113314448,
                color: Colors.amber,
                child: ListView(),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(sizeW / 19.65, sizeH / 35.5, 0, 0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Solve",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(5),
                      shadowColor: MaterialStateProperty.all(Colors.black),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9)),
                      ),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 95, 192, 146))),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  sizeW / 13.1, sizeH / 23.666666667, sizeW / 13.1, 0),
              child: SizedBox(
                width: sizeW / 1.18373494,
                height: sizeH / 4,
                child: Column(
                  children: [
                    Align(alignment: Alignment.centerLeft,
                        child: Text(
                      "genetic algorithm",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),
                    )),
                    SizedBox(
                      height: sizeH / 56.8,
                    ),
                    Text(
                        "Genetic algorithm is a computational technique that simulates the process of natural selection to solve complex problems. It has been widely applied in various fields, including software engineering. One of its applications in software engineering is test data generation.",style: TextStyle(fontWeight: FontWeight.w400,height: 1.75),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
