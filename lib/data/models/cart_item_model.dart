class CartItemModel {
  final String productId;
  final String variantId;
  final int quantity;
  final double price;

  CartItemModel({
    required this.productId,
    required this.variantId,
    required this.quantity,
    required this.price,
  });

  factory CartItemModel.fromMap(Map<String, dynamic> data) {
    return CartItemModel(
      productId: data['product_id'],
      variantId: data['variant_id'],
      quantity: data['quantity'],
      price: data['price'].toDouble(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'product_id': productId,
      'variant_id': variantId,
      'quantity': quantity,
      'price': price,
    };
  }
}
