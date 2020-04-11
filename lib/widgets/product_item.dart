import 'package:flutter/material.dart';
import 'package:states_hero/models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  final Function likeProduct;
  final Function deleteProduct;

  const ProductItem({
    Key key,
    @required this.product,
    @required this.likeProduct,
    @required this.deleteProduct,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // debugPrint("${product.name} ${product.isLiked} ${product.isSaved}");

    return ListTile(
      title: Text(product.name),
      subtitle: Text(product.description),
      onTap: likeProduct,
      leading: IconButton(
        icon: Icon(
          Icons.delete,
          color: product.isSaved ? Colors.green : Colors.grey,
        ),
        onPressed: deleteProduct,
      ),
      trailing: IconButton(
        icon: Icon(
          Icons.favorite,
          color: product.isLiked ? Colors.pink : Colors.grey,
        ),
        onPressed: likeProduct,
      ),
    );
  }
}
