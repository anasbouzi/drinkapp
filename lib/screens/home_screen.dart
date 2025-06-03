import 'package:drinkapp/core/utils/assets_path.dart';
import 'package:drinkapp/core/utils/styless.dart';
import 'package:drinkapp/models/drink_model.dart';
import 'package:drinkapp/widgets/drink_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return HomeScreenBody();
  }
}

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
              Row(
                children: [
                  Text("menu", style: Styless.textStyle18),
                  Spacer(),
                  Image.asset(AssetsPath.cart, width: 25),
                ],
              ),
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
                          child: DrinkCard(
                            name: drink.name,
                            title: drink.title,
                            price: drink.price,
                            image: drink.image,
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
