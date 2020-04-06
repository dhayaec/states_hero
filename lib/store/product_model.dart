import 'dart:math';

import 'package:states_hero/locator.dart';
import 'package:states_hero/models/product.dart';
import 'package:states_hero/services/product/fake_product_service.dart';
import 'package:states_hero/services/product/i_product_service.dart';

class ProductsFetchError extends Error {
  String message = 'Unable to fetch';
}

class ProductModel {
  IProductService _iProductService = locator<FakeProductService>();

  List<Product> posts = [];

  Future fetch() async {
    if (Random().nextBool()) {
      throw ProductsFetchError();
    }

    posts = await _iProductService.fetch();
  }
}
