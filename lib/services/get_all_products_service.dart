import 'package:store_fakeapi/constants.dart';
import 'package:store_fakeapi/helpers/api.dart';
import 'package:store_fakeapi/models/product_model.dart';

class GetAllProductsService {
  Future<List<Product>> getAllProducts() async {
    List<dynamic> data = await Api().get(url: '$kBaseUrl/products');

    List<Product> productsList = [];
    // for (int i = 0; i < data.length; i++) {
    //   productsList.add(
    //     Product.fromJson(data[i]),
    //   );
    // }

    for (var product in data) {
      productsList.add(Product.fromJson(product));
    }
    return productsList;
  }
}
