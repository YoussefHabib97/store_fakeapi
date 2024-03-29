import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_fakeapi/constants.dart';

class GetAllCategoriesService {
  Future<List> getAllCategories() async {
    http.Response response =
        await http.get(Uri.parse('$kBaseUrl/products/categories'));
    if (response.statusCode == 200) {
      try {
        List<dynamic> data = jsonDecode(response.body);
        return data;
      } on Exception catch (e) {
        print(e);
        return [];
      }
    } else {
      throw Exception(
          "An error has occured.\nStatus code = ${response.statusCode}");
    }
  }
}
