import 'package:flutter/material.dart';
import 'package:test_data_gen/views/res/paths.dart';

class OutPutPageTwo extends StatefulWidget {
  @override
  State<OutPutPageTwo> createState() => _OutPutPageTwoState();
}

class _OutPutPageTwoState extends State<OutPutPageTwo> {
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
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: sizeW / 0.9825,
            height: sizeH / 2.5,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage(
                      Paths.imgGrayWolfResult,
                    ),
                    fit: BoxFit.cover)),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  sizeW / 6.894736842, sizeH / 18.52173913, 0, 0),
              child: Container(
                width: sizeW / 3,
                height: sizeH / 4,
             
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: sizeH / 85.2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "X:",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "319",
                            style: TextStyle(fontSize: 23),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: sizeH / 85.2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Y:",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "4",
                            style: TextStyle(fontSize: 23),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: sizeH / 85.2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Z:",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "4",
                            style: TextStyle(fontSize: 23),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: sizeH / 85.2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "ANAR:",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "-103",
                            style: TextStyle(fontSize: 23),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: sizeH / 85.2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "TIME:",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "5.36",
                            style: TextStyle(fontSize: 23),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("s",
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding:  EdgeInsets.fromLTRB(0, sizeH/17.04, sizeW/10.9166, 0),
              child: TextButton(
                onPressed: () {},
                child: Padding(
                  padding:  EdgeInsets.fromLTRB(sizeW/17, sizeH/200, sizeW/17, sizeH/200),
                  child: Text(
                    "Share",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
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
        ],
      ),
    );
  }
}
