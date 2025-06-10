import 'package:drinkapp/core/utils/styless.dart';
import 'package:drinkapp/models/drink_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/shadow_for_detailes_screen.dart';

class DetailesScreen extends StatefulWidget {
  const DetailesScreen({super.key});

  @override
  State<DetailesScreen> createState() => _DetailesScreenState();
}

class _DetailesScreenState extends State<DetailesScreen> {
  final PageController _controller = PageController(viewportFraction: 0.50);
  double _currentPage = 0;

  @override
  void initState() {
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page ?? 1;
      });
    });
    super.initState();
  }

  final _drink = DrinkModel.drinks;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            //drink detailes price and name
            Positioned(
              top: 20,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(_drink[_currentPage.round()].name,
                        style: Styless.textStyle18,),
                      Gap(10),
                      Text(_drink[_currentPage.round()].title),
                    ],
                  ),
                  Text("\$ ${_drink[_currentPage.round()].price}",
                    style: Styless.textStyle16,),
                ],
              ),
            ),

            //image
            PageView.builder(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              itemCount: _drink.length,
              itemBuilder: (context, index) {
                final scale =
                    1 -
                        (_currentPage - index).abs() *
                            0.3; // Reduced scale factor
                final translateY =
                    (_currentPage - index).abs() * 400; // Reduced translation
                return Transform.translate(
                  offset: Offset(
                    translateY,
                    0,
                  ), // Translate vertically instead of horizontally
                  child: Transform.scale(
                    scale: scale.clamp(0.5, 1),
                    child: Column(
                      mainAxisSize:
                      MainAxisSize
                          .min, // Prevent Column from taking infinite height
                      children: [
                        Expanded(
                          // Use Expanded to constrain the image height
                          child: Stack(
                            children: [
                              Image.asset(
                                _drink[index].image,
                                fit: BoxFit.contain,
                                height: 900,
                                //width: double.infinity,
                              ),
                              ShadowForDetailesScreen(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

