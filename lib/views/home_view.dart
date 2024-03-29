import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 225,
              height: 125,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 40,
                    color: Colors.grey.withOpacity(0.25),
                    spreadRadius: 0,
                    offset: const Offset(10, 10),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Handbag LV',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              '\$254.99',
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_outline,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 32,
              bottom: 84,
              child: Image.network(
                'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
                height: 128,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
