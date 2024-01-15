import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_data_gen/models/algorithm_model.dart';
import 'package:test_data_gen/views/pages/appInfo.dart';
import 'package:test_data_gen/views/pages/input_condition.dart';
import 'package:test_data_gen/views/res/strings.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List <Algorithm> algorithm = [];

  Future getResponse(BuildContext context) async {
    var url = "https://pytestdatagenerator.pythonanywhere.com/algorithm/list";
    var value = await http.get(Uri.parse(url));

    if (algorithm.isEmpty) {
      if (value.statusCode == 200) {
        List jsonList = convert.jsonDecode(value.body);

        if (jsonList.isNotEmpty) {
          for (int i = 0; i < jsonList.length; i++) {
            setState(() {
              algorithm.add(Algorithm(
                id: jsonList[i]["id"],
                name: jsonList[i]["algorithm_name"],
                slug: jsonList[i]["algorithm_slug"],
                icon: jsonList[i]["algorithm_icon"],
                image: jsonList[i]["algorithm_image"],
                description: jsonList[i]["algorithm_description"],
                about: jsonList[i]["algorithm_about"],
                isAllowed: jsonList[i]["is_algorithm_allowed"],
              ));
            });
          }
        }
      }
    }
    return value;
  }

  @override
  void initState() {
    super.initState();
    getResponse(context);
  }

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
                  sizeW / 19.65, sizeH / 25, sizeW / 19.65, 0),
              child: Row(
                children: [
                  const Expanded(
                      child: Text(
                    Strings.chooseAlgorithm,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const AppInfoPage(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: sizeW / 78.6),
                      child: const Icon(
                        Icons.info_outline,
                        size: 30,
                      ),
                    ),
                  ),
                  Switch(
                      value: AdaptiveTheme.of(context).mode.isDark,
                      onChanged: (value) {
                        if (value) {
                          AdaptiveTheme.of(context).setDark();
                        } else {
                          AdaptiveTheme.of(context).setLight();
                        }
                      }),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: FutureBuilder(
                  //***** ? $$$$$ : @@@@@
                  builder: (context, snapshot) {
                    return snapshot.hasData
                        ? ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: algorithm.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(top: sizeH / 85.2),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                        builder: (context) =>
                                             InputCondition(slug: algorithm[index].slug!),
                                      ),
                                    );
                                  },
                                  child: Card(
                                    child: Column(
                                      children: [
                                        Container(
                                          height: sizeH / 4.042857143,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(
                                                  20,
                                                ),
                                              ),
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                    algorithm[index].image!,
                                                  ),
                                                  fit: BoxFit.cover)),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                sizeW / 39.3,
                                                sizeH / 106.5,
                                                sizeW / 39.3,
                                                sizeH / 213),
                                            child: Text(
                                              algorithm[index].name!,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 24),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                sizeW / 39.3,
                                                sizeH / 213,
                                                sizeW / 39.3,
                                                sizeH / 85.2),
                                            child: Text(
                                              algorithm[index].description!,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          )
                        : const Center(
                            child: CircularProgressIndicator(),
                          );
                  },
                  future: getResponse(context),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}
