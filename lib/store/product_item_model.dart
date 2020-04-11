import 'dart:math';

import 'package:states_hero/locator.dart';
import 'package:states_hero/models/product.dart';
import 'package:states_hero/services/product/fake_product_service.dart';
import 'package:states_hero/services/product/i_product_service.dart';
import 'package:states_hero/utils/exceptions.dart';

class ProductItemModel {
  IProductService _iProductService = locator<FakeProductService>();

  Future like(Product p) async {
    await _iProductService.likeProduct(p);
  }

  Future save(Product p) async {
    if (Random().nextBool()) {
      throw ProductSaveError();
    }
    await _iProductService.saveProduct(p);
  }
}
