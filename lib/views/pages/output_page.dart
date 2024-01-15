import 'package:flutter/material.dart';
import 'package:test_data_gen/views/res/paths.dart';

class OutPutPage extends StatefulWidget {
  const OutPutPage({super.key});

  @override
  State<OutPutPage> createState() => _OutPutPageState();
}

class _OutPutPageState extends State<OutPutPage> {
  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(sizeW / 19.65, sizeH / 13.3125, 0, 0),
            child: const Align(
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
              child: SizedBox(
                width: sizeW / 3,
                height: sizeH / 4,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: sizeH / 85.2),
                      child: const Row(
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
                      child: const Row(
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
                      child: const Row(
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
                      child: const Row(
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
                      child: const Row(
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
              padding:
                  EdgeInsets.fromLTRB(0, sizeH / 17.04, sizeW / 10.9166, 0),
              child: TextButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      sizeW / 17, sizeH / 200, sizeW / 17, sizeH / 200),
                  child: const Text(
                    "Share",
                    style: TextStyle(
                      color: Color(
                        0xFF1b211d,
                      ),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
