import 'package:flutter/material.dart';

customBottomSheet(
    {required BuildContext context,
    required TextEditingController controller,
    required var size,
    required String svgPic,
    required String icon,
    required String txtLiable,
    required String txtBtn,
    required String discretion,
    required Function onTap}) {
      
  return showModalBottomSheet(
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
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          height: 500,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 1, 10, 0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                        color: Colors.black,
                        width: 1.5,
                      ),
                      right: BorderSide(
                        color: const Color.fromRGBO(164, 99, 77, 1),
                        width: 1.5,
                      ),
                      left: BorderSide(
                        color: const Color.fromRGBO(164, 99, 77, 1),
                        width: 1.5,
                      ),
                      bottom: BorderSide(
                        color: const Color.fromRGBO(164, 99, 77, 1),
                        width: 1.5,
                      )),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  )),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          size.width / 6.05, 0, size.width / 6.05, 0),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height / 42.8),
                      child: Text(
                        discretion,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(size.width / 11.02,
                          size.height / 34.51, size.width / 11.02, 0),
                      child: TextField(
                        controller: controller,
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: size.height / 40, horizontal: 10),
                          hintText: txtLiable,
                          suffixIconConstraints: BoxConstraints(
                            maxHeight: 48.0,
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(10.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height / 30),
                      child: InkWell(
                        onTap: () {
                          onTap;
                        },
                        child: Container(
                          width: size.width / 3.071428571428571,
                          height: size.height / 18.64,
                          decoration: BoxDecoration(
                            color: Colors.indigoAccent,
                            borderRadius: BorderRadius.circular(1000),
                          ),
                          child: Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              txtBtn,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 24,
                                  color: Colors.red),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
