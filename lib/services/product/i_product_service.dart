import 'package:states_hero/models/product.dart';

abstract class IProductService {
  Future<List<Product>> fetch();

  Future<List<Product>> fetchSaved();

  Future<List<Product>> delete(Product product);

  Future<List<Product>> deleteSaved(Product product);

  Future<Product> likeProduct(Product p);

  Future<Product> saveProduct(Product p);
}
