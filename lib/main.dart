import 'package:flutter/material.dart';
import 'package:store_fakeapi/views/home_view.dart';

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
