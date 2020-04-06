import 'package:states_hero/mocks/mock_products.dart';
import 'package:states_hero/models/product.dart';
import 'package:states_hero/services/product/i_product_service.dart';

class FakeProductService implements IProductService {
  List<Product> _products = [];

  List<Product> get products => _products;

  @override
  Future<List<Product>> fetch() async {
    await Future.delayed(Duration(seconds: 1));
    _products = mockProducts;
    return _products;
  }

  @override
  Future<Product> likeProduct(Product p) async {
    await Future.delayed(Duration(microseconds: 500));
    Product product = _products.firstWhere(
      (i) => i.id == p.id,
      orElse: () => null,
    );
    product.isLiked = !p.isLiked;
    return product;
  }
}
