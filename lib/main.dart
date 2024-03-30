import 'package:flutter/material.dart';
import 'package:store_fakeapi/views/home_view.dart';
import 'package:store_fakeapi/views/update_product_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeView.route,
      routes: {
        HomeView.route: (context) => const HomeView(),
        UpdateProductView.route: (context) => UpdateProductView(),
      },
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
