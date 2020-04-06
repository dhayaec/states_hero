import 'package:flutter/material.dart';
import 'package:states_hero/locator.dart';
import 'package:states_hero/pages/home_page.dart';
import 'package:states_hero/services/product/fake_product_service.dart';
import 'package:states_hero/store/like_button_model.dart';
import 'package:states_hero/store/product_model.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

void main() {
  setUpLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Injector(
      inject: [
        Inject(() => ProductModel()),
        Inject(() => LikeButtonModel()),
      ],
      builder: (BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage(),
      ),
    );
  }
}
