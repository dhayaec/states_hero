import 'package:flutter/material.dart';
import 'package:states_hero/models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  final Function onPressed;

  const ProductItem({
    Key key,
    @required this.product,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("${product.name} ${product.isLiked}");

    return ListTile(
      title: Text(product.name),
      subtitle: Text(product.description),
      onTap: onPressed,
      trailing: IconButton(
        icon: Icon(
          Icons.favorite,
          color: product.isLiked ? Colors.pink : Colors.grey,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
