import 'package:get_it/get_it.dart';
import 'package:states_hero/services/product/fake_product_service.dart';

GetIt locator = GetIt.instance;

void setUpLocator() {
  locator.registerLazySingleton(() => FakeProductService());
}
