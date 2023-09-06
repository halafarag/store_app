import 'package:flutter/material.dart';
import 'package:store_app/screens/home_page.dart';
import 'package:store_app/screens/update_product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.id: (context)=>HomeScreen(),
        UpdateProductScreen.id:(context)=>UpdateProductScreen()
      },
      initialRoute: HomeScreen.id,
      home:  Scaffold(

        body: Text('deedggrrdttdgfgd'),
      ),
    );
  }
}

