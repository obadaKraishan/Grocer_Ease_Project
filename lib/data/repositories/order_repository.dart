import 'package:grocer_ease/data/models/order_model.dart';
import 'package:grocer_ease/services/order_service.dart';

class OrderRepository {
  final OrderService _orderService = OrderService();

  Future<void> createOrder(OrderModel order) async {
    await _orderService.createOrder(order);
  }

  Future<OrderModel?> getOrder(String orderId) async {
    return await _orderService.getOrder(orderId);
  }

  Future<void> updateOrder(OrderModel order) async {
    await _orderService.updateOrder(order);
  }

  Future<void> deleteOrder(String orderId) async {
    await _orderService.deleteOrder(orderId);
  }

  Future<List<OrderModel>> getAllOrders() async {
    return await _orderService.getAllOrders();
  }
}
