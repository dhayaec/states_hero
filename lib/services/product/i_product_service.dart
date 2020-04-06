import 'package:states_hero/models/product.dart';

abstract class IProductService {
  Future<List<Product>> fetch();

  Future<Product> likeProduct(Product p);
}
