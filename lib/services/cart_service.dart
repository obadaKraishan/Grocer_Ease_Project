import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grocer_ease/data/models/cart_model.dart';

class CartService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> createCart(CartModel cart) async {
    await _firestore.collection('carts').doc(cart.id).set(cart.toMap());
  }

  Future<CartModel?> getCart(String cartId) async {
    DocumentSnapshot doc = await _firestore.collection('carts').doc(cartId).get();
    if (doc.exists) {
      return CartModel.fromDocument(doc);
    }
    return null;
  }

  Future<void> updateCart(CartModel cart) async {
    await _firestore.collection('carts').doc(cart.id).update(cart.toMap());
  }

  Future<void> deleteCart(String cartId) async {
    await _firestore.collection('carts').doc(cartId).delete();
  }
}
