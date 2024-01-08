import 'package:flutter/material.dart';
import 'package:test_data_gen/views/res/strings.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                  sizeW / 19.65, sizeH / 13.3125, sizeW / 19.65, 0),
              child: Row(
                children: [
                  Expanded(child: Text(Strings.chooseAlgorithm)),
                  Padding(
                    padding: EdgeInsets.only(right: sizeW / 78.6),
                    child: Icon(Icons.info_outline),
                  ),
                  Icon(Icons.history),
                ],
              ),
            ),
            ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return Text("data");
              })
          ],
        ),
      ),
    );
  }
}
