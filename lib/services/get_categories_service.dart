import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:store_fakeapi/constants.dart';
import 'package:store_fakeapi/models/product_model.dart';

class GetCategoriesService {
  Future<List<Product>> getCategoriesProducts({
    required String category,
  }) async {
    http.Response response =
        await http.get(Uri.parse('$kBaseUrl/products/category/$category'));
    if (response.statusCode == 200) {
      try {
        List<dynamic> data = jsonDecode(response.body);
        List<Product> productsList = [];
        for (var product in data) {
          productsList.add(Product.fromJson(product));
        }
        return productsList;
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
