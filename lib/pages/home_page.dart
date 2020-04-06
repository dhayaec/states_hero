import 'package:flutter/material.dart';
import 'package:states_hero/models/product.dart';
import 'package:states_hero/store/like_button_model.dart';
import 'package:states_hero/store/product_model.dart';
import 'package:states_hero/widgets/product_item.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: StateBuilder<ProductModel>(
        models: [Injector.getAsReactive<ProductModel>()],
        initState: (context, model) => model.setState((state) => state.fetch()),
        builder: (context, model) {
          return model.whenConnectionState(
            onIdle: () => Center(
              child: CircularProgressIndicator(),
            ),
            onWaiting: () => Center(
              child: CircularProgressIndicator(),
            ),
            onData: (m) => ListView.builder(
              itemCount: model.state.posts.length,
              itemBuilder: (_, i) {
                Product p = model.state.posts[i];
                return StateBuilder<LikeButtonModel>(
                  builder: (_, like) => ProductItem(
                    product: p,
                    onPressed: () => like.setState((state) => state.like(p)),
                  ),
                );
              },
            ),
            onError: (err) => err is ProductsFetchError
                ? Center(
                    child: Text(err.message),
                  )
                : Center(
                    child: Text(err.toString()),
                  ),
          );
        },
      ),
    );
  }
}
