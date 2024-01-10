import 'package:flutter/material.dart';
import 'package:test_data_gen/views/res/paths.dart';

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
          Container(
            width: sizeW / 0.9825,
            height: sizeH / 2.13,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage(
                      Paths.imgDNAresult,
                    ),
                    fit: BoxFit.cover)),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  sizeW / 6.894736842, sizeH / 18.52173913, 0, 0),
              child: Container(
                width: sizeW / 2.358974,
                height: sizeH / 3.8,
                color: Colors.greenAccent,
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
                                fontSize: 24, fontWeight: FontWeight.bold),
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
                                fontSize: 24, fontWeight: FontWeight.bold),
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
                                fontSize: 24, fontWeight: FontWeight.bold),
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
                                fontSize: 24, fontWeight: FontWeight.bold),
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
                                fontSize: 24, fontWeight: FontWeight.bold),
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
                          Text("s",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
