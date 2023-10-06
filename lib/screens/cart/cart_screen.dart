import 'package:flutter/material.dart';

import '../../services/assets_manager.dart';
import '../../widgets/empty_bag.dart';
import '../../widgets/title_text.dart';
import 'bottom_checkout.dart';
import 'cart_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  final bool isEmpty = false;

  @override
  Widget build(BuildContext context) {
    final List abc = [
      const CartWidget(),
      const CartWidget(),
      const CartWidget(),
      const CartWidget(),
      const CartWidget(),
      const CartWidget(),
      const CartWidget(),
      const CartWidget(),
      const CartWidget(),
      const CartWidget()
    ];
    return isEmpty
        ? Scaffold(
            body: EmptyBagWidget(
              imagePath: AssetsManager.shoppingBasket,
              title: "Your cart is empty",
              subtitle:
                  "Looks like your cart is empty add something and make me happy",
              buttonText: "Shop now",
            ),
          )
        : Scaffold(
            appBar: AppBar(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  AssetsManager.shoppingCart,
                ),
              ),
              title: const TitlesTextWidget(label: "Cart (6)"),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete_forever_rounded,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            body: ListView.builder(
                shrinkWrap: true,
                itemCount: abc.length + 1,
                itemBuilder: (context, index) {
                  if (index == abc.length) {
                    return const SizedBox(height: 100);
                  } else {
                    return CartWidget();
                  }
                }),
            bottomSheet: const CartBottomSheetWidget(),
          );
  }
}
