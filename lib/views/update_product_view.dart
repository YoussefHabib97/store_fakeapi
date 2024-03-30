import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_fakeapi/models/product_model.dart';
import 'package:store_fakeapi/services/update_product_service.dart';
import 'package:store_fakeapi/widgets/custom_button.dart';
import 'package:store_fakeapi/widgets/custom_text_form_field.dart';

class UpdateProductView extends StatefulWidget {
  static const String route = 'update-product';
  const UpdateProductView({super.key});
  @override
  State<UpdateProductView> createState() => _UpdateProductViewState();
}

class _UpdateProductViewState extends State<UpdateProductView> {
  String? productTitle, description, price;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    Product product = ModalRoute.of(context)!.settings.arguments as Product;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
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
                  setState(() {
                    isLoading = true;
                  });

                  try {
                    await updateProduct(product);
                  } on Exception catch (e) {
                    print(e.toString());
                  }

                  setState(() {
                    isLoading = false;
                  });
                },
                buttonText: "Update",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(Product product) async {
    await UpdateProductService().updateProduct(
      id: product.id,
      title: productTitle == null ? product.title : productTitle!,
      price: price == null ? product.price.toString() : price!,
      description: description == null ? product.description : description!,
      image: product.image,
      category: product.category,
    );
  }
}
