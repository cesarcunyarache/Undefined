// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:undefined/domain/entities/food.dart';
import 'package:undefined/presentation/widgets/details_food.dart';

class FoodElement extends StatefulWidget {
  Food food;
  FoodElement({super.key, required this.food});

  @override
  State<FoodElement> createState() => _FoodElementState();
}

class _FoodElementState extends State<FoodElement> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return DetailsFood(food: widget.food);
        }));
      },
      child: SizedBox(
        width: width * .4,
        height: width * .51,
        child: Stack(
          children: [
            Container(
              width: 250 /* width * .4 */,
              height: 370 /* height * .1 */,
              /*  padding: const EdgeInsets.all(8), */
              decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(
                        255, 213, 213, 213), // Color del borde
                    width: 0.5, // Grosor del borde
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                        8), // Ajusta el radio según sea necesario
                    child: Image.asset(
                      widget.food.picture!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: width * .28,
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.food.name!,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          widget.food.category!,
                          style:
                              const TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  size: 18,
                                  color: Colors.amber,
                                ),
                                Text(
                                  widget.food.calification.toString(),
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            /* Text(
                        "${widget.food.price} s/",
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                                                ), */
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    isFav = !isFav;
                                  });
                                },
                                icon: Icon(
                                  !isFav
                                      ? Icons.favorite_outline
                                      : Icons.favorite_rounded,
                                  color: isFav ? Colors.red : Colors.grey,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            /* Positioned(
                bottom: height * .11,
                left: ((width * .4) - (width * .35)) / 2,
                child: Hero(
                  tag: widget.food.id!,
                  child: Image.asset(
                    widget.food.picture!,
                    width: width * .35,
                    height: width * .35,
                  ),
                )) */
          ],
        ),
      ),
    );
  }
}
