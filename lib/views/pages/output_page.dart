import 'package:flutter/material.dart';
import 'package:test_data_gen/views/pages/home_page.dart';
import 'package:test_data_gen/views/res/paths.dart';

class OutPutPage extends StatefulWidget {
  const OutPutPage({super.key, required this.result,required this.icon,});

  final Map<String, dynamic> result;
  final String icon;
  

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
            decoration:  BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                    image: NetworkImage(
                      widget.icon,
                    ),
                    fit: BoxFit.cover)),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  sizeW / 6.894736842, sizeH / 18.52173913, 0, 0),
              child: Text(
                '${widget.result.keys}=${widget.result.values}',
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding:
                  EdgeInsets.fromLTRB(0, sizeH / 17.04, sizeW / 10.9166, 0),
              child: TextButton(
                onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );},
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      sizeW / 17, sizeH / 200, sizeW / 17, sizeH / 200),
                  child: const Text(
                    "Back to Home",
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
