import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sizeH = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Text("data"),
                Icon(Icons.info),
                Icon(Icons.history),
              ],
            )
          ],
        ),
      ),
    );
  }
}
