import 'package:flutter/material.dart';
import 'package:states_hero/models/product.dart';
import 'package:states_hero/store/product_item_model.dart';
import 'package:states_hero/store/product_model.dart';
import 'package:states_hero/utils/error_handler.dart';
import 'package:states_hero/widgets/product_item.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class ProductsList extends StatelessWidget {
  final String tabName;

  const ProductsList({
    Key key,
    @required this.tabName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateBuilder<ProductModel>(
      models: [Injector.getAsReactive<ProductModel>()],
      initState: (context, model) => tabName == 'Phone'
          ? model.setState((state) => state.fetch())
          : model.setState((state) => state.fetchSaved()),
      watch: (m) {
        return m.state.posts.length;
      },
      builder: (context, model) {
        if (model.isWaiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        return ListView.builder(
          itemCount: model.state.posts.length,
          itemBuilder: (_, i) {
            Product p = model.state.posts[i];
            return StateBuilder<ProductItemModel>(
              builder: (_, like) {
                return ProductItem(
                  product: p,
                  likeProduct: () => like.setState(
                    (state) => state.like(p),
                    onError: ErrorHandler.showSnackBar,
                  ),
                  deleteProduct: () => model.setState(
                    (state) => tabName == 'Phone'
                        ? state.delete(p)
                        : state.deleteSaved(p),
                    onError: ErrorHandler.showSnackBar,
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
