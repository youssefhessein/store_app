import 'package:flutter/material.dart';
import 'package:store_app/Screens/details_screen.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/widgets/home/prodect_cart.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          const SizedBox(height: kDefaultPadding / 2),
          Expanded(
              child: Stack(
            children: [
              Container( 
                margin: const EdgeInsets.only(top: 70.0),
                decoration: const BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
              ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                        itemIndex: index,
                        product: products[index],
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                      product: products[index],
                                    )),
                          );
                        },
                      ))
            ],
          ))
        ],
      ),
    );
  }
}
