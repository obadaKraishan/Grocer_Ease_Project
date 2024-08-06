import 'package:grocer_ease/data/models/cart_model.dart';
import 'package:grocer_ease/services/cart_service.dart';

class CartRepository {
  final CartService _cartService = CartService();

  Future<void> createCart(CartModel cart) async {
    await _cartService.createCart(cart);
  }

  Future<CartModel?> getCart(String cartId) async {
    return await _cartService.getCart(cartId);
  }

  Future<void> updateCart(CartModel cart) async {
    await _cartService.updateCart(cart);
  }

  Future<void> deleteCart(String cartId) async {
    await _cartService.deleteCart(cartId);
  }
}
