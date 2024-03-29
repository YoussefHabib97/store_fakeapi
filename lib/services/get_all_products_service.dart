import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:store_fakeapi/constants.dart';
import 'package:store_fakeapi/helpers/api.dart';
import 'package:store_fakeapi/models/product_model.dart';

class GetAllProductsService {
  Future<List<Product>> getAllProducts() async {
    http.Response response = await Api().get(url: '$kBaseUrl/products');
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
  }
}
