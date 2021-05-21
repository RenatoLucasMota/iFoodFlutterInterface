import 'package:flutter/material.dart';
import 'package:ifood_flutter_clone/core/theme/app_colors.dart';
import 'package:ifood_flutter_clone/core/theme/app_icons.dart';
import 'package:ifood_flutter_clone/core/theme/app_typography.dart';
import 'package:ifood_flutter_clone/models/restaurant.dart';

class RestaurantItemComponent extends StatefulWidget {
  final Restaurant restaurant;

  const RestaurantItemComponent({Key key, @required this.restaurant})
      : super(key: key);

  @override
  _RestaurantItemComponentState createState() =>
      _RestaurantItemComponentState();
}

class _RestaurantItemComponentState extends State<RestaurantItemComponent> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(widget.restaurant.photoUrl),
                radius: 30,
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.restaurant.name,
                    style: AppTypography.restaurantTitle(context),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      AppIcon(
                        AppIcons.star,
                        size: Size(9, 9),
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        widget.restaurant.rate.toString(),
                        style:
                            AppTypography.restaurantDetails(context).copyWith(
                          color: Colors.amber,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      _Dot(),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        widget.restaurant.category,
                        style: AppTypography.restaurantDetails(context),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      _Dot(),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        widget.restaurant.distance,
                        style: AppTypography.restaurantDetails(context),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Text(
                        widget.restaurant.time[0].toString(),
                        style: AppTypography.restaurantDetails(context),
                      ),
                      Text(
                        '-',
                        style: AppTypography.restaurantDetails(context),
                      ),
                      Text(
                        widget.restaurant.time[1].toString(),
                        style: AppTypography.restaurantDetails(context),
                      ),
                      _Dot(),
                      Text(
                        widget.restaurant.deliveryTaxe,
                        style: AppTypography.restaurantDetails(context),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          AppIcon(
            widget.restaurant.favorite ? AppIcons.fav : AppIcons.favLine,
            size: Size(18, 18),
            color: AppColors.grey7,
          ),
        ],
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      '•',
      style: TextStyle(fontSize: 9, color: AppColors.grey7),
    );
  }
}

List<Restaurant> restaurants = [
  Restaurant(
      category: 'Japonesa',
      deliveryTaxe: "R\$ 5,99",
      distance: "4,1 km",
      favorite: false,
      name: "Restaurante Japones",
      photoUrl:
          "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/sushi-bar-restaurant-logo-design-template-a917bf7521aa74b08179cad073df41c1_screen.jpg?ts=1597302425",
      rate: 4.6,
      time: [60, 80]),
  Restaurant(
      category: 'Japonesa',
      deliveryTaxe: "R\$ 5,99",
      distance: "4,1 km",
      favorite: false,
      name: "Restaurante Japones",
      photoUrl:
          "https://i.pinimg.com/736x/58/ba/8b/58ba8bc8d560d03e5de064a222a52564.jpg",
      rate: 4.6,
      time: [60, 80]),
  Restaurant(
      category: 'Japonesa',
      deliveryTaxe: "R\$ 5,99",
      distance: "4,1 km",
      favorite: false,
      name: "Restaurante Japones",
      photoUrl:
          "https://image.freepik.com/free-vector/vintage-restaurant-logo_23-2148459010.jpg",
      rate: 4.6,
      time: [60, 80]),
  Restaurant(
      category: 'Japonesa',
      deliveryTaxe: "R\$ 5,99",
      distance: "4,1 km",
      favorite: false,
      name: "Restaurante Japones",
      photoUrl:
          "https://st2.depositphotos.com/7109552/11377/v/600/depositphotos_113775112-stock-illustration-vintage-restaurant-and-cafe-label.jpg",
      rate: 4.6,
      time: [60, 80]),
  Restaurant(
      category: 'Japonesa',
      deliveryTaxe: "R\$ 5,99",
      distance: "4,1 km",
      favorite: false,
      name: "Restaurante Japones",
      photoUrl:
          "https://freedesignfile.com/upload/2016/10/Restaurant-logos-creative-design-vector-07.jpg",
      rate: 4.6,
      time: [60, 80]),
  Restaurant(
      category: 'Japonesa',
      deliveryTaxe: "R\$ 5,99",
      distance: "4,1 km",
      favorite: false,
      name: "Restaurante Japones",
      photoUrl:
          "https://i.pinimg.com/originals/13/ea/97/13ea973cdc14d45e27d8285f2020c6bf.png",
      rate: 4.6,
      time: [60, 80]),
];
