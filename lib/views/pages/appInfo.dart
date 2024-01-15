import 'package:flutter/material.dart';
import 'package:test_data_gen/views/res/paths.dart';
import 'package:test_data_gen/views/res/strings.dart';

class AppInfoPage extends StatelessWidget {
  const AppInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    String textInfo =
        'Effortlessly Generate Realistic and Comprehensive Test DataStreamline your software testing process with our powerful test data generation app, designed to save you time, effort, and ensure comprehensive testing coverage. Our user-friendly interface and extensive customization options empower you to generate realistic and relevant data for a wide range of applications and data types.Unleash the Power of AutomationAutomate the tedious task of manually creating test data and focus on more critical aspects of software development. Our app efficiently generates data based on your specific requirements, eliminating the need for manual data entry and reducing the risk of errors.Enhance Quality AssuranceEnsure the robustness and reliability of your applications by employing realistic and comprehensive test data. Our app provides a plethora of options to customize data generation, allowing you to replicate real-world scenarios and identify potential issues early on.Boost Productivity and Reduce Costs  Embrace the efficiency of our test data generation app and significantly reduce the time spent on data preparation. By automating this process, you can allocate more resources to core development tasks, leading to increased productivity and reduced costs associated with software defects.Features at a Glance:Extensive data type support: Generate test data for a wide range of data types, Customizable generation parameters: Specify the exact format, ranges, and distribution of your generated data to match your testing needs. Diverse data formats: Export generated test data in various formats, including CSV, JSON, SQL, and Excel. Integration with testing tools: Seamlessly integrate our app with your existing testing tools for a streamlined testing workflow. Embark on a Journey of Efficient TestingDownload our test data generation app today and experience the transformative power of automation and data-driven testing. Eliminate time-consuming manual tasks, enhance quality assurance, and boost productivity while reducing costs. Let our app empower you to deliver exceptional software that meets the highest standards of quality';

    double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 30, 8, 20),
                child: Container(
                  height: sizeH / 5.68,
                  width: sizeW / 2.62,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage(
                            Paths.img_logo,
                          ),
                          fit: BoxFit.cover)),
                ),
              ),
              const Text(
                Strings.splash,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text("TDG Version : 1.0.0 \n TDG Core Version : 1.0.0",textAlign: TextAlign.center,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      showDragHandle: true,
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24.0),
                          topRight: Radius.circular(24.0),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return Padding(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: SizedBox(
                            height: 500,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 1, 10, 0),
                              child: Container(
                                decoration: const BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                          color:
                                              Color.fromARGB(255, 68, 164, 126),
                                          width: 1.5,
                                        ),
                                        right: BorderSide(
                                          color:
                                              Color.fromARGB(255, 68, 164, 126),
                                          width: 1.5,
                                        ),
                                        left: BorderSide(
                                          color:
                                              Color.fromARGB(255, 68, 164, 126),
                                          width: 1.5,
                                        ),
                                        bottom: BorderSide(
                                          color:
                                              Color.fromARGB(255, 68, 164, 126),
                                          width: 1.5,
                                        )),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16.0),
                                      topRight: Radius.circular(16.0),
                                    )),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          width: 400,
                                          height: 480,
                                          child: SingleChildScrollView(
                                            child: Column(
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    textInfo,
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style: const TextStyle(),
                                                  
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: const Text(
                    "TDG Info",
                    style: TextStyle(
                     
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ),
              ),
              const Expanded(
                child: Align(alignment: Alignment.bottomCenter,
                  child: Text(
                    "Made with 💚 by U.D",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}

