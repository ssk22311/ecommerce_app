import 'package:ecommerce_app/src/features/products/domain/product.dart';

class Item {
  const Item({
    required this.productId,
    required this.quantity,
  });
  final ProductID productId;
  final int quantity;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.productId == productId &&
        other.quantity == quantity;
  }

  @override
  int get hashCode => productId.hashCode ^ quantity.hashCode;
}
