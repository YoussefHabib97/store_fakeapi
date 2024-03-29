import 'package:store_fakeapi/helpers/api.dart';
import 'package:store_fakeapi/models/product_model.dart';

class GetAllProductsService {
  Future<List<Product>> getAllProducts() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<Product> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        Product.fromJson(data[i]),
      );
    }
    return productsList;
  }
}
