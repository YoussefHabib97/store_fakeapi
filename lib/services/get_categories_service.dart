import 'package:store_fakeapi/constants.dart';
import 'package:store_fakeapi/helpers/api.dart';
import 'package:store_fakeapi/models/product_model.dart';

class GetCategoriesService {
  Future<List<Product>> getCategoriesProducts({
    required String category,
  }) async {
    List<dynamic> data =
        await Api().get(url: '$kBaseUrl/products/category/$category');
    try {
      List<Product> productsList = [];
      for (var product in data) {
        productsList.add(Product.fromJson(product));
      }
      return productsList;
    } on Exception catch (e) {
      return [];
    }
  }
}
