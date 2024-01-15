import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class InputCondition extends StatefulWidget {
  InputCondition({super.key, required this.slug});

  String slug;

  @override
  State<InputCondition> createState() => _InputConditionState();
}

class _InputConditionState extends State<InputCondition> {
  static List<String> expressions = [];
  String data = expressions.join(',');

  void getMethod() async {
    String token = "8df9b75e-44ba-4f0e-bc91-74077f24e53f/";

    String data = json.encode({"user_entry_list": expressions});

    Map<String, String> headers = {"Authorization": "Bearer $token"};

    headers["algorithm_name"] = "z-3";

    String apiUrl =
        "https://pytestdatagenerator.pythonanywhere.com/solve/$token";

    Uri finalUrl = Uri.parse(apiUrl).replace(queryParameters: {
      "algorithm_name": "z-3",
      "user_entry_list": json.encode(expressions),
    });

    http.Response response = await http.get(
      finalUrl,
      headers: headers,
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> responseBody = json.decode(response.body);

      Map<String, dynamic> result = responseBody["result"];

      result.forEach((key, value) {
        print("Results: $key=$value");
      });
    } else {
      print("Error: ${response.statusCode}");
    }
  }

  List<TextEditingController> controllers = [
    TextEditingController(),
    TextEditingController(),
  ];

  addTextField() {
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
                child: AnimatedContainer(
                  constraints: const BoxConstraints(
                      minHeight: 100,
                      minWidth: double.infinity,
                      maxHeight: 330,
                      maxWidth: double.infinity),
                  padding: const EdgeInsets.only(top: 10),
                  duration: const Duration(minutes: 1),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      for (int i = 0; i < controllers.length; i++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            maxLength: 4,
                            controller: controllers[i],
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.code_rounded),
                              suffixIcon: Icon(
                                Icons.delete_forever,
                              ),
                              label: Text("conditions"),
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

                      getMethod();
                    },
                    child: const Text(
                      "Solve",
                      style: TextStyle(
                        color: Color(
                          0xFF1b211d,
                        ),
                      ),
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
          tooltip: 'Add Text Field',
          child: const Icon(
            Icons.add,
            color: Color(
              0xFF1b211d,
            ),
          ),
        ),
      ),
    );
  }
}
