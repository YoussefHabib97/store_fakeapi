import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_fakeapi/models/product_model.dart';
import 'package:store_fakeapi/services/get_all_products_service.dart';
import 'package:store_fakeapi/widgets/product_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const route = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text("New Trend"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.cartShopping),
          ),
        ],
      ),
      body: FutureBuilder<List<Product>>(
        future: GetAllProductsService().getAllProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Product> products = snapshot.data!;
            return ProductsGridView(
              products: products,
            );
          } else {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }
        },
      ),
    );
  }
}

class ProductsGridView extends StatelessWidget {
  final List<Product> products;
  const ProductsGridView({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) => ProductCard(
        product: products[index],
      ),
    );
  }
}
