import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:food_delivery_app/data/data.dart';
import 'package:food_delivery_app/model/food.dart';
import 'package:food_delivery_app/model/restrurent.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestaurantDetails extends StatefulWidget {
  final Restaurant restaurant;

  RestaurantDetails({required this.restaurant});

  @override
  _RestaurantDetailsState createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Hero(
                tag: widget.restaurant.imageUrl,
                child: Image(
                  height: 170.h,
                  width: MediaQuery.of(context).size.width,
                  image: AssetImage(widget.restaurant.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.red,
                      ),
                      iconSize: 30,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      iconSize: 30,
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.restaurant.name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    Text(
                      "0.2 km away",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text("⭐⭐⭐⭐"),
                SizedBox(
                  height: 2.h,
                ),
                Text(widget.restaurant.address),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                onPressed: () {},
                padding: EdgeInsets.symmetric(horizontal: 40),
                color: Color(0xff676FA3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Review",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.white),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                padding: EdgeInsets.symmetric(horizontal: 40),
                color: Color(0xff35589A),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Contact",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.white),
                ),
              )
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Center(
            child: Text(
              "Menu",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 1),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Expanded(
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              children: List.generate(widget.restaurant.menu.length, (index) {
                Food food = widget.restaurant.menu[index];
                return Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 150.h,
                        width: 150.w,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage(food.imageUrl))),
                      ),
                      Container(
                        height: 150.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(colors: [
                              Colors.black.withOpacity(0.3),
                              Colors.black87.withOpacity(0.3),
                              Colors.black54.withOpacity(0.3),
                              Colors.black38.withOpacity(0.3),
                            ], stops: [
                              0.1,
                              0.4,
                              0.6,
                              0.9
                            ])),
                      ),
                      Positioned(
                        bottom: 70,
                        child: Column(
                          children: [
                            Text(
                              food.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  letterSpacing: 1,
                                  color: Colors.white),
                            ),
                            Text(
                              "\$${food.price}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  letterSpacing: 1,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(40)),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.add),
                              iconSize: 30,
                              color: Colors.redAccent,
                            ),
                          ))
                    ],
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
