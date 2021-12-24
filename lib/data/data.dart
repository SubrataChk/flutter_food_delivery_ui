import 'package:food_delivery_app/model/food.dart';
import 'package:food_delivery_app/model/order.dart';
import 'package:food_delivery_app/model/restrurent.dart';
import 'package:food_delivery_app/model/user.dart';

final _burrito = Food(
  imageUrl: "images/burrito.jpg",
  name: "Burrito ",
  price: 8.99,
);

final _steak = Food(
  imageUrl: "images/steak.jpg",
  name: "Steak ",
  price: 8.99,
);
final _pasta = Food(
  imageUrl: "images/pasta.jpg",
  name: "Pasta ",
  price: 8.99,
);
final _ramen = Food(
  imageUrl: "images/ramen.jpg",
  name: "Ramen ",
  price: 8.99,
);
final _pancakes = Food(
  imageUrl: "images/pancakes.jpg",
  name: "Pancakes ",
  price: 8.99,
);
final _burgur = Food(
  imageUrl: "images/burger.jpg",
  name: "Burgur ",
  price: 8.99,
);

final _pizza = Food(
  imageUrl: "images/pizza.jpg",
  name: "Pizza ",
  price: 8.99,
);
final _salmon = Food(
  imageUrl: "images/salmon.jpg",
  name: "Salmon ",
  price: 8.99,
);

final _restaurant = Restaurant(
  address: "Anderkilla, Dewanbazar",
  imageUrl: "images/restaurant0.jpg",
  menu: [_steak, _pasta, _pancakes, _pizza, _burgur, _burrito, _ramen, _salmon],
  name: "Pizza Hut",
  rating: 4,
);
final _restaurant1 = Restaurant(
  address: "Chokbazar",
  imageUrl: "images/restaurant1.jpg",
  menu: [_steak, _pasta, _pizza, _burrito, _ramen, _salmon],
  name: "KFC",
  rating: 3,
);

final _restaurant2 = Restaurant(
  address: "GEC more",
  imageUrl: "images/restaurant2.jpg",
  menu: [_steak, _pasta, _pancakes, _burrito, _burgur, _ramen, _salmon],
  name: "CTG Burgur",
  rating: 5,
);

final _restaurant3 = Restaurant(
  address: "2 no Gate",
  imageUrl: "images/restaurant3.jpg",
  menu: [_steak, _pasta, _pancakes, _pizza, _burrito, _ramen, _salmon],
  name: "Rodela Bikel",
  rating: 5,
);

final _restaurant4 = Restaurant(
  address: "Sanmar GEC more",
  imageUrl: "images/restaurant4.jpg",
  menu: [_steak, _pasta, _pancakes, _pizza, _burgur, _burrito, _ramen, _salmon],
  name: "Sadia's Kitchen",
  rating: 3,
);

final List<Restaurant> restaurant = [
  _restaurant,
  _restaurant1,
  _restaurant2,
  _restaurant3,
  _restaurant4
];
final currenUser = User(name: "Subrata", orders: [
  Order(
    date: "Nov 16 2020",
    food: _steak,
    quantity: 3,
    restaurants: _restaurant,
  ),
  Order(
    date: "Nov 12 2020",
    food: _burrito,
    quantity: 2,
    restaurants: _restaurant2,
  ),
  Order(
    date: "Dec 10 2020",
    food: _burgur,
    quantity: 5,
    restaurants: _restaurant2,
  ),
  Order(
    date: "Dec 26 2020",
    food: _pizza,
    quantity: 2,
    restaurants: _restaurant4,
  ),
  Order(
    date: "Nov 16 2020",
    food: _steak,
    quantity: 4,
    restaurants: _restaurant,
  )
], carts: [
  Order(
    date: "Nov 16 2020",
    food: _steak,
    quantity: 3,
    restaurants: _restaurant,
  ),
  Order(
    date: "Nov 12 2020",
    food: _burrito,
    quantity: 2,
    restaurants: _restaurant2,
  ),
  Order(
    date: "Dec 10 2020",
    food: _burgur,
    quantity: 5,
    restaurants: _restaurant2,
  ),
]);
