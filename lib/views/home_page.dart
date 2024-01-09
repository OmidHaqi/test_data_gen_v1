import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_data_gen/views/inputCondition.dart';
import 'package:test_data_gen/views/res/paths.dart';
import 'package:test_data_gen/views/res/strings.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 235, 246, 240),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                  sizeW / 19.65, sizeH / 25, sizeW / 19.65, 0),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    Strings.chooseAlgorithm,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )),
                  Padding(
                    padding: EdgeInsets.only(right: sizeW / 78.6),
                    child: Icon(
                      Icons.info_outline,
                      size: 30,
                    ),
                  ),
                  Icon(
                    Icons.history,
                    size: 37,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(top: sizeH / 85.2),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => InputCondition(),
                            ),
                          );
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            //set border radius more than 50% of height and width to make circle
                          ),
                          color: Color.fromARGB(255, 203, 238, 221),
                          elevation: 4,
                          child: Column(
                            children: [
                              Container(
                                height: sizeH / 4.042857143,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          Paths.imgDNAalgorithm,
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(sizeW / 39.3,
                                      sizeH / 106.5, sizeW / 39.3, sizeH / 213),
                                  child: Text(
                                    'genetic algorithm',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(sizeW / 39.3,
                                      sizeH / 213, sizeW / 39.3, sizeH / 85.2),
                                  child: Text(
                                      'a method for solving both constrained and unconstrained optimization problems based on a natural selection process that mimics biological evolution',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
