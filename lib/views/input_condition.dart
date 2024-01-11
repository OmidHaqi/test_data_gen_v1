import 'package:flutter/material.dart';

class InputCondition extends StatefulWidget {
  const InputCondition({super.key});

  @override
  State<InputCondition> createState() => _InputConditionState();
}

class _InputConditionState extends State<InputCondition> {
  static List<String> expressions = [];

  List<TextEditingController> controllers = [
    TextEditingController(),
    TextEditingController(),
  ];

  void addTextField() {
    controllers.add(TextEditingController());
  }

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < controllers.length; i++) {
      controllers[i] = TextEditingController();
    }
  }

  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 235, 246, 240),
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
                  constraints: const BoxConstraints(
                    minHeight: 100,
                    minWidth: double.infinity,
                    maxHeight: 330,
                    maxWidth: double.infinity
                  ),
                  padding: const EdgeInsets.only(top: 10),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      for (int i = 0; i < controllers.length; i++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            
                            controller: controllers[i],
                            decoration: const InputDecoration(
                              
                              labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 68, 164, 126)),
                              labelText: 'conditions',
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 68, 164, 126),
                                    width: 2),
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2,
                                      color: Color.fromARGB(255, 207, 233, 217))),
                            ),
                          ),
                        ),
                    ],
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
                      for (var i = 0; i < controllers.length; i++) {
                        expressions.add(controllers[i].text);
                      }
                      print(expressions);
                    },
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(5),
                        shadowColor: MaterialStateProperty.all(Colors.black),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                        ),
                        backgroundColor: const MaterialStatePropertyAll(
                            Color.fromARGB(255, 95, 192, 146))),
                    child: const Text(
                      "Solve",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
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
                      const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "genetic algorithm",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          )),
                      SizedBox(
                        height: sizeH / 56.8,
                      ),
                      const Text(
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
              addTextField();
            });
          },
          backgroundColor: const Color.fromARGB(255, 68, 164, 126),
          tooltip: 'Add Text Field',
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

}
