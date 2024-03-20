import 'package:flutter/material.dart';

import '../components/constant.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Favourite Screen',
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
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
                          image: AssetImage('assets/tea-1.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                      top: 20,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width / 1.25),
                            Container(
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                          )))
                ],
              ),
              Container(
                decoration: const BoxDecoration(
                    color: kTransperentColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Description",
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          "Cappuccino is a latet mode with more foam than steamed milk,often with a sprinkle of cocaa powder or cinnamon on top."),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 465,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/tea-1.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                      top: 20,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width / 1.25),
                            Container(
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                          )))
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    color: kTransperentColor,
                    borderRadius: BorderRadius.circular(15)),
                child: const Column(
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
