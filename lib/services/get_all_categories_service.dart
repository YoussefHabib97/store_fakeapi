import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_fakeapi/constants.dart';

class GetAllCategoriesService {
  Future<List> getAllCategories() async {
    try {
      http.Response response =
          await http.get(Uri.parse('$kBaseUrl/products/categories'));
      List<dynamic> data = jsonDecode(response.body);
      return data;
    } on Exception catch (e) {
      print(e);
      return [];
    }
  }
}
