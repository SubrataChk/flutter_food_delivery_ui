import 'package:food_delivery_app/model/food.dart';
import 'package:food_delivery_app/model/restrurent.dart';

class Order {
  final Restaurant restaurants;
  final Food food;
  final String date;
  final int quantity;

  Order(
      {required this.date,
      required this.food,
      required this.quantity,
      required this.restaurants});
}
