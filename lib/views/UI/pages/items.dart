import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:grorcery_app_/models/models.dart';

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

            //Sliver Grid

            SliverPadding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 15.0),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, index) {
                    // if (index > 3) return null;
                    return Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff1A3848),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 19.0,
                          right: 9.0,
                          left: 9.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                                child: Image.asset(favorite[index].imageUrl)),
                            const SizedBox(
                              height: 35,
                            ),
                            //Name of vege
                            Text(
                              favorite[index].name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            //Price Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  favorite[index].price,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 13,
                                    color: Color(
                                      0xffFF324B,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: Theme.of(context)
                                        .appBarTheme
                                        .backgroundColor,
                                    child: Icon(
                                      Icons.add,
                                      size: 18,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  childCount: favorite.length,
                ),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300.0,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 0.7,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
