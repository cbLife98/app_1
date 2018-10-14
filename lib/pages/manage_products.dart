import 'package:flutter/material.dart';
import 'home.dart';

class ManageProduct extends StatelessWidget {
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
              title: new Text("All Products"),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Home()));
              },
            )
          ],
        ),
      ),
      appBar: new AppBar(
        title: new Text('Manage Products'),
      ),
      body: new Center(
        child: new Text("Manage Your Products"),
      ),
    );
  }
}
