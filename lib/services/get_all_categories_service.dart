import 'package:store_fakeapi/constants.dart';
import 'package:store_fakeapi/helpers/api.dart';

class GetAllCategoriesService {
  Future<List> getAllCategories() async {
    List<dynamic> data = await Api().get(url: '$kBaseUrl/products/categories');
    return data;
  }
}
