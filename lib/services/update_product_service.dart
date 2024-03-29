import 'package:store_fakeapi/constants.dart';
import 'package:store_fakeapi/helpers/api.dart';
import 'package:store_fakeapi/models/product_model.dart';

class UpdateProductService {
  Future<Product> updateProduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: '$kBaseUrl/products',
      body: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': category,
      },
    );
    return Product.fromJson(data);
  }
}
