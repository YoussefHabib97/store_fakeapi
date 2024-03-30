import 'package:flutter/material.dart';
import 'package:store_fakeapi/models/product_model.dart';
import 'package:store_fakeapi/services/update_product_service.dart';
import 'package:store_fakeapi/widgets/custom_button.dart';
import 'package:store_fakeapi/widgets/custom_text_form_field.dart';

class UpdateProductView extends StatelessWidget {
  String? productTitle, description, price;

  UpdateProductView({super.key});

  static const String route = 'update-product';
  @override
  Widget build(BuildContext context) {
    Product product = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Update Product"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFormField(
              onChanged: (value) {
                productTitle = value;
              },
              labelText: 'New Title',
              hintText: '',
              keyboardType: TextInputType.text,
            ),
            CustomTextFormField(
              onChanged: (value) {
                description = value;
              },
              labelText: 'New Description',
              hintText: '',
              keyboardType: TextInputType.text,
            ),
            CustomTextFormField(
              onChanged: (value) {
                price = value;
              },
              labelText: 'New Price',
              hintText: '',
              keyboardType: TextInputType.number,
            ),
            CustomButton(
              onPressed: () async {
                UpdateProductService().updateProduct(
                  title: productTitle!,
                  price: price!,
                  description: description!,
                  image: product.image,
                  category: product.category,
                );
              },
              buttonText: "Update",
            ),
          ],
        ),
      ),
    );
  }
}
