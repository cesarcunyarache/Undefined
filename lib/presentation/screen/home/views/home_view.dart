import 'dart:math';

import 'package:flutter/material.dart';
import 'package:undefined/domain/entities/food.dart';
import 'package:undefined/presentation/widgets/food_element.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int activeScreen = 1;

  List<String> sectionIcons = [
    "Todas",
    "Almuerzos",
    "Bebidas",
    "Entradas",
    "Postres"
  ];

  /* "Lomo saltado",
          "Aji de gallina",
          "Causa"
          "Ceviche"
 */
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: width * .7,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Restaurante",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w800),
                          ),
                          Text(
                            "Don Renato",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    IconButton.filled(
                        style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.black)),
                        onPressed: () {},
                        icon: const Icon(Icons.search))
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 35,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    /*  mainAxisAlignment: MainAxisAlignment.spaceBetween, */
                    children: sectionIcons.map((icon) {
                      return ClipRRect(
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: sectionIcons[0] == icon
                                  ? Colors.black
                                  : Colors.white,
                              border: Border.all(
                                color: Colors.black87, // Color del borde
                                width: 0.1, // Grosor del borde
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 25),
                          child: Text(
                            icon,
                            style: TextStyle(
                                color: sectionIcons[0] == icon
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 15),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(
                  height: 34,
                ),
                Wrap(
                    spacing: width * .04,
                    runSpacing: 40,
                    children: listFoods.map((food) {
                      return FoodElement(food: food);
                    }).toList())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
