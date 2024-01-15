// import 'package:dio/dio.dart';
// import 'package:test_data_gen/models/algorithm_model.dart';
// import 'package:test_data_gen/views/res/api.dart';

// getAlgorithm() async {
//   // ایجاد یک شیء Dio
//   Dio dio = Dio();

//   // تنظیم آدرس URL داده‌های JSON
//   String url = '${ApiConst.url}algorithm/list?format=json';

//   // ارسال درخواست GET
//   Response response = await dio.get(url);

//   // بررسی وضعیت پاسخ
//   if (response.statusCode == 200) {
//     // دریافت داده‌های JSON
//     var algorithms = response.data;
//     List<dynamic> dynamicAlgorithms = [];
//     // تبدیل داده‌های JSON به لیست
//     List<Algorithm> algorithmList = dynamicAlgorithms
//         .map((algorithm) => Algorithm.fromJson(algorithm))
//         .toList();
//     // چاپ لیست
//     print(algorithmList);
//   } else {
//     // نمایش خطا
//     print(response.statusCode);
//   }
// }
