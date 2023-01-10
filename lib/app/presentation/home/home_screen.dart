import 'package:delivery_app_clean_architecture/app/presentation/colors.dart';
import 'package:delivery_app_clean_architecture/app/presentation/home/cart/cart_screen.dart';
import 'package:delivery_app_clean_architecture/app/presentation/home/products/products_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: IndexedStack(
              index: currentIndex,
              children: [
                const ProductsScreen(),
                Center(
                  child: Text(
                    'selectedIndex1: $currentIndex',
                  ),
                ),
                CartScreen(
                  onShopping: () {
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                ),
                Center(
                  child: Text(
                    'selectedIndex3: $currentIndex',
                  ),
                ),
                Center(
                  child: Text(
                    'selectedIndex4: $currentIndex',
                  ),
                ),
              ],
            ),
          ),
          _DeliveryNavigationBar(
            index: currentIndex,
            onIndexSelected: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ],
      ),
    );
  }
}

class _DeliveryNavigationBar extends StatelessWidget {
  final int index;
  final ValueChanged<int> onIndexSelected;
  const _DeliveryNavigationBar({
    required this.index,
    required this.onIndexSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Theme.of(context).bottomAppBarColor,
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipOval(
                child: Material(
                  child: IconButton(
                    onPressed: () => onIndexSelected(0),
                    icon: Icon(
                      Icons.home,
                      color: index == 0
                          ? DeliveryColors.green
                          : DeliveryColors.lightgrey,
                      size: 35,
                    ),
                  ),
                ),
              ),
              ClipOval(
                child: Material(
                  child: IconButton(
                    onPressed: () => onIndexSelected(1),
                    icon: Icon(
                      Icons.store,
                      color: index == 1
                          ? DeliveryColors.green
                          : DeliveryColors.lightgrey,
                      size: 35,
                    ),
                  ),
                ),
              ),
              Material(
                child: CircleAvatar(
                  radius: 23,
                  backgroundColor: DeliveryColors.purple,
                  child: Center(
                    child: IconButton(
                      onPressed: () => onIndexSelected(2),
                      icon: Icon(
                        Icons.shopping_basket_rounded,
                        color: index == 2
                            ? DeliveryColors.green
                            : DeliveryColors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
              ClipOval(
                child: Material(
                  child: IconButton(
                    onPressed: () => onIndexSelected(3),
                    icon: Icon(
                      Icons.favorite_border,
                      color: index == 3
                          ? DeliveryColors.green
                          : DeliveryColors.lightgrey,
                      size: 35,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => onIndexSelected(4),
                child: const CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
