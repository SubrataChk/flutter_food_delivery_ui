import 'package:food_delivery_app/model/order.dart';

class User {
  final String name;
  final List<Order> orders;
  final List<Order> carts;

  User({required this.carts, required this.name, required this.orders});
}
