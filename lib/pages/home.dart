import 'package:flutter/material.dart';
import 'package:app_1/productsManager.dart';
import 'manage_products.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            AppBar(
              title: new Text("Choose"),
              automaticallyImplyLeading: false,
            ),
            ListTile(
              leading: new Icon(Icons.location_on),
              title: new Text("Manage Products"),
              onTap: () {
                Navigator.pushReplacement(context, new MaterialPageRoute(
                    builder: (BuildContext context) => ManageProduct()
                ));
              },)
          ],
        ),
      ),
      appBar: new AppBar(
        title: new Text('My App'),
      ),
      body: ProductsManager(),
    );
  }
}
