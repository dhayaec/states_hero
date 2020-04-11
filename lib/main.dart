import 'package:flutter/material.dart';
import 'package:states_hero/locator.dart';
import 'package:states_hero/pages/home_page.dart';
import 'package:states_hero/store/product_item_model.dart';
import 'package:states_hero/store/product_model.dart';
import 'package:states_hero/theme.dart';
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
        Inject(() => ProductItemModel()),
      ],
      builder: (BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: appTheme,
        home: HomePage(),
      ),
    );
  }
}
