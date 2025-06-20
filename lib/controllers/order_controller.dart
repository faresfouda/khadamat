import 'dart:async';

import 'package:get/get.dart';
import 'package:khadamat/models/OrderModel.dart';
import 'package:khadamat/services/api/order/order_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OrderController extends GetxController {
  final OrderService orderService;
  OrderController({required this.orderService});

  var isLoading = false.obs;
  var MyCurrentOrder = <Map<String, dynamic>>[].obs;

  var doneOrders = <Map<String, dynamic>>[].obs;
  var pendingOrders = <Map<String, dynamic>>[].obs;
  var order = Rxn<Ordermodel>();

  Future createorder(
    String service_id,
    String orderAdress,
    String orderDetails,
      ) async {
    isLoading.value = true;
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token') ?? '';
    final response = await orderService.createOrder(
      service_id: service_id,
      orderAdress: orderAdress,
      orderDetails: orderDetails,
      token: token,
    );
    if (response['success'] == true) {
      isLoading.value = false;
    } else {
      isLoading.value = false;
      throw Exception(response['message'] ?? 'Failed to create order');
    }
  }

  Future Currentorder() async {
    isLoading.value = true;
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token') ?? '';

    final response = await orderService.getCurrentOrder(token: token);

    if (response['success'] == true) {
      final orders = List<Map<String, dynamic>>.from(response['data']['orders']);
      MyCurrentOrder.value = orders;

      // Filtering based on 'status'
      doneOrders.value = orders.where((order) => order['status'] == 'done').toList();
      pendingOrders.value = orders.where((order) => order['status'] == 'pending').toList();

      order.value = Ordermodel.fromJson(response['data']);
    } else {
      isLoading.value = false;
      throw Exception(response['message'] ?? 'Failed to fetch current orders');
    }

    isLoading.value = false;
  }

  Future updateOrder(int orderid, String orderCategory, String orderAdress, String orderDetails) async {
    isLoading.value = true;
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token') ?? '';

    try {
      final response = await orderService.updateOrder(
        orderId: orderid,
        orderCategory: orderCategory,
        orderAdress: orderAdress,
        orderDetails: orderDetails,
        token: token,
      );

      if (response['success'] == true) {
        final orders = List<Map<String, dynamic>>.from(response['data']['orders']);
        MyCurrentOrder.value = orders;

        // Re-filter the updated list
        doneOrders.value = orders.where((order) => order['status'] == 'done').toList();
        pendingOrders.value = orders.where((order) => order['status'] == 'pending').toList();

        order.value = Ordermodel.fromJson(response['data']['order']);
      } else {
        throw Exception(response['error'] ?? 'Failed to update order');
      }
    } on Exception catch (e) {
      print(e.toString());
    }

    isLoading.value = false;
  }
}
