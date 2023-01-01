import 'package:flutter/material.dart';
import 'dart:math' as math;

Color getRandomColor() {
  return Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
      .withOpacity(1.0);
}

class ItemGridList extends StatelessWidget {
  const ItemGridList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: true,
              title: Text(
                "Vegetables",
                style: Theme.of(context).textTheme.headline2,
              ),
              leadingWidth: 35,
              actions: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  child: const Icon(Icons.search_sharp),
                )
              ],
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 16,
                  // color: Colors.blueGrey,
                ),
              ),
            ),

            //Sliver List

            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, index) {
                  // if (index > 3) {
                  //   return null;
                  // }

                  return Container(
                    color: getRandomColor(),
                    height: 150,
                  );
                },
                childCount: 3,
              ),
            ),

            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    height: 200,
                    color: getRandomColor(),
                  ),
                  Container(
                    height: 200,
                    color: getRandomColor(),
                  ),
                  Container(
                    height: 200,
                    color: getRandomColor(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
