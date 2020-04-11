import 'package:states_hero/mocks/mock_products.dart';
import 'package:states_hero/models/product.dart';
import 'package:states_hero/services/product/i_product_service.dart';

class FakeProductService implements IProductService {
  List<Product> _products = [];
  List<Product> _savedProducts = [];

  @override
  Future<List<Product>> fetch() async {
    await Future.delayed(Duration(milliseconds: 100));
    _products = getProducts();
    return _products;
  }

  @override
  Future<List<Product>> delete(Product product) async {
    await Future.delayed(Duration(milliseconds: 100));
    _products.removeWhere((i) => product.id == i.id);
    return _products;
  }

  @override
  Future<List<Product>> deleteSaved(Product product) async {
    await Future.delayed(Duration(milliseconds: 100));
    _savedProducts.removeWhere((i) => product.id == i.id);
    return _savedProducts;
  }

  @override
  Future<Product> likeProduct(Product p) async {
    await Future.delayed(Duration(milliseconds: 100));
    Product product = _products.firstWhere(
      (i) => i.id == p.id,
      orElse: () => null,
    );
    product.isLiked = !p.isLiked;
    return product;
  }

  @override
  Future<Product> saveProduct(Product p) async {
    await Future.delayed(Duration(milliseconds: 100));
    Product product = _products.firstWhere(
      (i) => i.id == p.id,
      orElse: () => null,
    );
    product.isSaved = !p.isSaved;
    return product;
  }

  @override
  Future<List<Product>> fetchSaved() async {
    await Future.delayed(Duration(milliseconds: 100));
    return _savedProducts = _products.where((i) => i.isSaved).toList();
  }
}
