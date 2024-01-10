import 'package:flutter/material.dart';

class InputCondition extends StatefulWidget {
  @override
  State<InputCondition> createState() => _InputConditionState();
}

class _InputConditionState extends State<InputCondition> {
  static List<TextEditingController> controllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];
  static List<String> expressions = [];
  List<TextFormField> fields = [
    TextFormField(
      controller: TextEditingController(),
      decoration: const InputDecoration(
        labelStyle: TextStyle(color: Color.fromARGB(255, 68, 164, 126)),
        labelText: 'conditions',
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Color.fromARGB(255, 68, 164, 126), width: 2),
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide(
                width: 2, color: Color.fromARGB(255, 207, 233, 217))),
      ),
    ),
    TextFormField(
      controller: TextEditingController(),
      decoration: const InputDecoration(
        labelStyle: TextStyle(color: Color.fromARGB(255, 68, 164, 126)),
        labelText: 'conditions',
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Color.fromARGB(255, 68, 164, 126), width: 2),
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide(
                width: 2, color: Color.fromARGB(255, 207, 233, 217))),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 235, 246, 240),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.fromLTRB(sizeW / 19.65, sizeH / 13.3125, 0, 0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'input',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    sizeW / 19.65, sizeH / 25.058823529, sizeW / 19.65, 0),
                child: Container(
                  constraints: BoxConstraints(
                    minHeight:100 ,
                    minWidth: double.infinity,
                    maxHeight: 330,
                    
                  ),
                  
                  padding: EdgeInsets.only(top: 10),
                  height: sizeH / 3,
                  width: sizeW / 1.113314448,
                  child: ListView(
                    children: fields
                        .map((textFormField) => Container(
                              padding: EdgeInsets.only(bottom: 10, top: 5),
                              child: textFormField,
                            ))
                        .toList(),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      EdgeInsets.fromLTRB(sizeW / 19.65, sizeH / 35.5, 0, 0),
                  child: TextButton(
                    onPressed: () {
                      expressions.clear();
                      for (var i = 0; i < fields.length; i++) {
                        expressions.add("${fields[i].controller!.text}");
                      }
                      print(expressions);
                    },
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
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "genetic algorithm",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          )),
                      SizedBox(
                        height: sizeH / 56.8,
                      ),
                      Text(
                        "Genetic algorithm is a computational technique that simulates the process of natural selection to solve complex problems. It has been widely applied in various fields, including software engineering. One of its applications in software engineering is test data generation.",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, height: 1.75),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              fields.add(field);
              controllers.add(TextEditingController());
            });
          },
          backgroundColor: Color.fromARGB(255, 68, 164, 126),
          tooltip: 'Add Text Field',
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  TextFormField field =     TextFormField(
      controller: TextEditingController(),
      decoration: const InputDecoration(
        labelStyle: TextStyle(color: Color.fromARGB(255, 68, 164, 126)),
        labelText: 'conditions',
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Color.fromARGB(255, 68, 164, 126), width: 2),
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide(
                width: 2, color: Color.fromARGB(255, 207, 233, 217))),
      ),
    );
}
