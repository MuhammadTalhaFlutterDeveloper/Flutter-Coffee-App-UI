import 'package:coffee_app/Screens/coffee_detail_screen.dart';
import 'package:coffee_app/components/constant.dart';
import 'package:flutter/material.dart';

class CoffeeCardScreen extends StatefulWidget {
  const CoffeeCardScreen({super.key});

  @override
  State<CoffeeCardScreen> createState() => _CoffeeCardScreenState();
}

class _CoffeeCardScreenState extends State<CoffeeCardScreen> {
  List<String> images = [
    "assets/tea-1.jpg",
    "assets/tea-2.jpg",
    "assets/tea-3.jpg",
    "assets/tea-4.jpg",
    "assets/tea-5.jpg",
    "assets/tea-6.jpg",
    "assets/tea-7.jpg",
    "assets/tea-8.jpg",
  ];

  List<String> ingredients = [
    "With Oat Milk",
    "With Chocolate",
    "With Cinnamon",
    "With Caremel",
    "With Oat Milk",
    "With Chocolate",
    "With Cinnamon",
    "With Caremel",
  ];

  List<double> prices = [
    4.20,
    3.14,
    5.20,
    7.50,
    3.20,
    2.14,
    8.20,
    7.50,
  ];

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 4,
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const CoffeeDetailScreen();
            },
          ));
        },
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.only(left: 15),
                  width: 148,
                  height: 233,
                  decoration: BoxDecoration(
                    color: kTransperentColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(images[index]),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'Cappuccino',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            ingredients[index],
                            style: const TextStyle(color: kGreyColor),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      r"$",
                                      style: TextStyle(
                                          color: kBrownColor,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text(
                                    "${prices[index]}",
                                    style: const TextStyle(
                                        color: kWhiteColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 8),
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: kYellowColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
