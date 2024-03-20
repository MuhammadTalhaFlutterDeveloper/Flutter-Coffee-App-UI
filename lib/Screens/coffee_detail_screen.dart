import 'package:coffee_app/Screens/favourite_screen.dart';
import 'package:coffee_app/Screens/payment_screen.dart';
import 'package:flutter/material.dart';

import '../components/constant.dart';

class CoffeeDetailScreen extends StatelessWidget {
  const CoffeeDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 465,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage('assets/tea-1.jpg'), fit: BoxFit.cover),
                ),
              ),
              Positioned(
                  top: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            return Navigator.pop(context);
                          },
                          child: Container(
                            height: 43,
                            width: 43,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: kBlackLessColor),
                            child: const Center(
                              child: Icon(
                                Icons.arrow_back_ios_new_rounded,
                                color: kIconColor,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 1.44),
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const FavouriteScreen(),
                              )),
                          child: Container(
                            height: 43,
                            width: 43,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: kBlackLessColor),
                            child: const Center(
                                child: Image(
                              image: AssetImage('assets/heart.png'),
                              width: 23,
                              height: 23,
                            )),
                          ),
                        )
                      ],
                    ),
                  )),
              Positioned(
                  top: 350,
                  child: Container(
                      decoration: const BoxDecoration(
                          color: kBlurrColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(35))),
                      height: 125,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 25.0, top: 8, right: 25, bottom: 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 11.0),
                                  child: Text(
                                    'Cappuccino',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: kWhiteColor,
                                        fontSize: 20),
                                  ),
                                ),
                                const Text(
                                  'With Steamed Milk',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: kGreyColor,
                                      fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 9,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/star.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 5),
                                      child: Text(
                                        '4.5',
                                        style: TextStyle(
                                            color: kWhiteColor, fontSize: 18),
                                      ),
                                    ),
                                    const Text('(6,879)')
                                  ],
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: kBlackColor,
                                      ),
                                      child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image(
                                              width: 20,
                                              height: 20,
                                              image: AssetImage(
                                                'assets/coffee-beans.png',
                                              )),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            'Coffee',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: kBlackColor,
                                      ),
                                      child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image(
                                              width: 20,
                                              height: 20,
                                              image: AssetImage(
                                                'assets/milk.png',
                                              )),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            'Milk',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: kBlackColor,
                                      borderRadius: BorderRadius.circular(8)),
                                  width: 120,
                                  height: 30,
                                  child: const Center(
                                      child: Text(
                                    'Medium Roasted',
                                    style: TextStyle(fontSize: 12),
                                  )),
                                )
                              ],
                            )
                          ],
                        ),
                      )))
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Cappuccino is a latet mode with more foam than steamed milk,often with a sprinkle of cocaa powder or cinnamon on top."),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Size",
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  color: kTransperentColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: kBrownColor, width: 2),
                ),
                child: const Center(
                    child: Text(
                  "S",
                  style: TextStyle(fontSize: 18),
                )),
              ),
              Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  color: kTransperentColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                    child: Text(
                  "M",
                  style: TextStyle(fontSize: 18),
                )),
              ),
              Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  color: kTransperentColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                    child: Text(
                  "L",
                  style: TextStyle(fontSize: 18),
                )),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: const Column(
                  children: [
                    Text('Price'),
                    Row(
                      children: [
                        Text(
                          r"$",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                              color: kBrownMostColor),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '4.20',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 220,
                decoration: BoxDecoration(
                  color: kBrownMostColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                    child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PaymentScreen(),
                        ));
                  },
                  child: const Text(
                    "Buy Now",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                )),
              ),
            ],
          )
        ],
      )),
    );
  }
}
