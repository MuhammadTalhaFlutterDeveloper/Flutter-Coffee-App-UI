import 'package:coffee_app/Screens/coffee_cards.dart';
import 'package:coffee_app/Screens/favourite_screen.dart';
import 'package:coffee_app/components/constant.dart';
import 'package:flutter/material.dart';

import 'coffee_bean.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final TextEditingController _searchController = TextEditingController();
  late TabController tabController;
  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  void initState() {
    tabController = TabController(length: 9, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(children: [
        textContainer(),
        const SizedBox(height: 8),
        textField(),
        const SizedBox(
          height: 10,
        ),
        tabBar(),
        const CoffeeCardScreen(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.topLeft,
          child: const Text(
            "Coffee beans",
            style: TextStyle(
                color: kWhiteColor, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const CoffeeBeansScreen(),
      ]),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: kBrownColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: kGrayColor,
          currentIndex: selectedIndex,
          onTap: (index) => onItemTapped(index),
          items: [
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_rounded), label: "Shopping"),
            BottomNavigationBarItem(
                icon: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FavouriteScreen(),
                      )),
                  child: const Icon(
                    Icons.favorite_outlined,
                  ),
                ),
                label: 'Favourite'),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                ),
                label: 'Notification'),
          ]),
    );
  }

  TabBar tabBar() {
    return TabBar(
        tabAlignment: TabAlignment.start,
        indicator: CircleTabIndicator(color: kBrownColor, radius: 4.0),
        controller: tabController,
        labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        isScrollable: true,
        dividerHeight: 0,
        unselectedLabelColor: kGreyColor,
        labelColor: kBrownColor,
        tabs: const [
          Tab(
            text: 'All',
          ),
          Tab(
            text: 'Cappuccino',
          ),
          Tab(
            text: 'Espresso',
          ),
          Tab(
            text: 'Latte',
          ),
          Tab(
            text: 'Kashmiri',
          ),
          Tab(
            text: 'Kenya',
          ),
          Tab(
            text: 'Black Coffee',
          ),
          Tab(
            text: 'Flat Whine',
          ),
          Tab(
            text: 'Quetta',
          ),
        ]);
  }

  Padding textField() {
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextField(
          controller: _searchController,
          style: const TextStyle(height: 0.7, color: kWhiteColor),
          autocorrect: true,
          keyboardType: TextInputType.name,
          cursorColor: kGrayColor,
          decoration: InputDecoration(
            fillColor: kTransperentColor,
            filled: true,
            border: InputBorder.none,
            prefixIcon: const Icon(
              Icons.search,
              color: kGrayColor,
            ),
            hintText: 'Find Your Coffee...',
            hintStyle: const TextStyle(color: kGrayColor),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: kTransperentColor)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: kTransperentColor)),
          ),
        ));
  }

  Container textContainer() {
    return Container(
        alignment: Alignment.topLeft,
        margin: const EdgeInsets.all(5),
        child: const Padding(
          padding: EdgeInsets.only(left: 15, top: 5),
          child: Text(
            'Find the Best\nCoffee for You',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, color: kWhiteColor),
          ),
        ));
  }

  AppBar appBar() {
    return AppBar(
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(10.0),
        child: InkWell(
          onTap: () {
            //
          },
          child: Container(
            decoration: BoxDecoration(
                color: kTransperentColor,
                borderRadius: BorderRadius.circular(10)),
            child: const Icon(
              Icons.menu,
              color: kIconColor,
            ),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () {
              //
            },
            child: ClipOval(
              child: Image.asset('assets/logo.jpg'),
            ),
          ),
        )
      ],
    );
  }
}

//circle tab indicator
class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({required Color color, required double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
