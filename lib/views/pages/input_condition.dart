import 'dart:convert';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;
import 'package:test_data_gen/views/pages/output_page.dart';
import 'package:test_data_gen/views/res/widgets.dart';

// ignore: must_be_immutable
class InputCondition extends StatefulWidget {
  InputCondition({
    super.key,
    required this.id,
    required this.name,
    required this.slug,
    required this.icon,
    required this.image,
    required this.description,
    required this.about,
    required this.isAllowed,
  });

  final int? id;
  final String? name;
  final String? slug;
  final String? icon;
  final String? image;
  final String? description;
  final String? about;
  final bool? isAllowed;

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

    headers["algorithm_name"] = widget.slug!;

    String apiUrl =
        "https://pytestdatagenerator.pythonanywhere.com/solve/$token";

    Uri finalUrl = Uri.parse(apiUrl).replace(queryParameters: {
      "algorithm_name": widget.slug,
      "user_entry_list": json.encode(expressions),
    });
    
    showDialog(
        context: context,
        builder: (context) {
          final sizeW = MediaQuery.of(context).size.width;
          return AlertDialog(
            scrollable: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(36),
            ),
            content: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
              alignment: Alignment.topCenter,
              width: sizeW / 18,
              child: FittedBox(
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(42),
                          decoration: BoxDecoration(
                              color: AdaptiveTheme.of(context).brightness ==
                                      Brightness.light
                                  ? const Color(0xFF5FC092)
                                  : const Color(0xFF1b211d),
                              shape: BoxShape.circle),
                        ),
                        Icon(
                          Icons.person,
                          size: 50,
                          color: AdaptiveTheme.of(context).brightness ==
                                  Brightness.light
                              ? const Color(0xFF1b211d)
                              : const Color(0xFF5FC092),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Calculating!',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    const SizedBox(height: 15),
                    SpinKitRing(
                      size: 45,
                      color: AdaptiveTheme.of(context).brightness ==
                              Brightness.light
                          ? const Color(0xFF1b211d)
                          : const Color(0xFF5FC092),
                    )
                  ],
                ),
              ),
            ),
          );
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

        Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OutPutPage(result: result,icon: widget.icon!,)),
              );
      });
    } else {
      print("Error: ${response.statusCode}");
    }
  }

  List<TextEditingController> controllers = [
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
                              prefixIcon: Icon(
                                Icons.code_rounded,
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
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "${widget.name} algorithm",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          )),
                      SizedBox(
                        height: sizeH / 56.8,
                      ),
                      Text(
                        "${widget.description}",
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
