import 'package:coffee_app/Screens/coffee_beans_screen.dart';
import 'package:coffee_app/components/constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CoffeeBeansScreen extends StatefulWidget {
  const CoffeeBeansScreen({super.key});

  @override
  State<CoffeeBeansScreen> createState() => _CoffeeBeansScreenState();
}

class _CoffeeBeansScreenState extends State<CoffeeBeansScreen> {
  List<String> images = [
    "assets/bean-1.jpg",
    "assets/bean-2.jpg",
    "assets/bean-3.jpg",
    "assets/bean-4.jpg",
  ];

  List<String> beanNames = [
    "Robusta Beans",
    "Cappuccino",
    "Cappuccino",
    "Irani beans",
  ];

  List<String> beansIngredients = [
    "Medium Roasted",
    "With Streamed Milk",
    "With Cinnamon",
    "With Caremel",
  ];

  List<double> prices = [
    4.2,
    5.0,
    3.5,
    6.7,
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CoffeeBeanDetailScreen(),
            )),
        child: ListView(
          children: [
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      height: 140,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: kTransperentColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 120,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(images[index]),
                                    fit: BoxFit.cover)),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Cappuccino',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                beanNames[index],
                                style: const TextStyle(color: kGreyColor),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20.0),
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
                                  const SizedBox(
                                    width: 70,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(right: 8),
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: kYellowColor,
                                        borderRadius:
                                            BorderRadius.circular(10)),
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
                    )
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
