// import 'dart:math';

import 'package:states_hero/locator.dart';
import 'package:states_hero/models/product.dart';
import 'package:states_hero/services/product/fake_product_service.dart';
import 'package:states_hero/services/product/i_product_service.dart';

class ProductModel {
  IProductService _iProductService = locator<FakeProductService>();

  List<Product> posts = [];

  Future fetch() async {
    posts = await _iProductService.fetch();
  }

  Future fetchSaved() async {
    posts = await _iProductService.fetchSaved();
  }

  Future delete(Product p) async {
    posts = await _iProductService.delete(p);
  }

  Future deleteSaved(Product p) async {
    posts = await _iProductService.deleteSaved(p);
  }
}
