import 'package:states_hero/locator.dart';
import 'package:states_hero/models/product.dart';
import 'package:states_hero/services/product/fake_product_service.dart';
import 'package:states_hero/services/product/i_product_service.dart';

class LikeButtonModel {
  IProductService _iProductService = locator<FakeProductService>();

  Product product;

  Future like(Product p) async {
    product = await _iProductService.likeProduct(p);
  }
}
