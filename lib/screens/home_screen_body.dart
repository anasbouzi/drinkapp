import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../models/drink_model.dart';
import '../widgets/app_bar_section.dart';
import '../widgets/drink_card.dart';
import 'detailes_screen.dart';

ScrollController controller = ScrollController();

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Gap(20),
              AppBarSection(),
              Gap(25),
              Expanded(
                child: ListView.builder(
                  controller: controller,
                  physics: BouncingScrollPhysics(),
                  itemCount: DrinkModel.drinks.length,
                  itemBuilder: (context, index) {
                    final drink = DrinkModel.drinks[index];
                    return AnimatedBuilder(
                      animation: controller,
                      builder: (context, child) {
                        double offset = 0;
                        if (controller.hasClients) {
                          offset = controller.offset / 110 - index;
                        }
                        offset = offset.clamp(0, 1);
                        return Transform.scale(
                          scale: 1 - (offset * .2),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailesScreen(),
                                ),
                              );
                            },
                            child: DrinkCard(
                              name: drink.name,
                              title: drink.title,
                              price: drink.price,
                              image: drink.image,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
