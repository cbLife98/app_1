import 'package:flutter/material.dart';
import 'package:app_1/productsManager.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('My App'),
      ),
      body: ProductsManager(),
    );
  }
}
