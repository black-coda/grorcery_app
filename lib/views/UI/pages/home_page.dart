import 'package:flutter/material.dart';
import 'package:grorcery_app_/routes/routes.dart';
import 'package:grorcery_app_/views/UI/pages/item_details.dart';
import "dart:math" as math;

import 'package:grorcery_app_/views/UI/pages/items.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      maintainBottomViewPadding: true,
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: const [
                    MyAppBar(),

                    // search bar
                    SingleSearchBar(),

                    SizedBox(height: 24),

                    // Carousel card
                    CustomCardAds(),
                    //Category
                    CategoryWidget(),
                    //BestSelling
                    BestSellingWidget(),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 15.0),
              sliver: SliverGrid(
                delegate:
                    SliverChildBuilderDelegate((BuildContext context, index) {
                  // if (index > 3) return null;
                  return GestureDetector(
                    onTap: () => Navigator.of(context)
                        .pushNamed(RouteManager.detailPage),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff1A3848),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 19.0,
                          right: 9.0,
                          left: 9.0,
                          // bottom: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(child: Image.asset("assets/ata.png")),
                            const SizedBox(
                              height: 35,
                            ),
                            //Name of vege
                            const Text(
                              "Bell pepper Red",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            //Price Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "1kg,  \$4",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 13,
                                    color: Color(
                                      0xffFF324B,
                                    ),
                                  ),
                                ),
                                CircleAvatar(
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
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }, childCount: 6),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300.0,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 0.75,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleSearchBar extends StatelessWidget {
  const SingleSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 374,
      child: TextFormField(
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          filled: true,
          prefixIconColor: Theme.of(context).colorScheme.primary,
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(67)),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Theme.of(context).colorScheme.primary,
          ),
          labelText: "Search category",
          hintText: "Fruits`",
          // focusColor: Colors.white,
          labelStyle: const TextStyle(
            color: Color(0xff617986),
            fontSize: 14,
          ),
          fillColor: const Color(0xff1A3848),
        ),
      ),
    );
  }
}

class BestSellingWidget extends StatelessWidget {
  const BestSellingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 26,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Best Selling 🔥",
              style: Theme.of(context).textTheme.headline2,
            ),
            GestureDetector(
              onTap: () =>
                  Navigator.of(context).pushNamed(RouteManager.listPage),
              child: Text(
                "See all",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 26,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories 😋",
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                "See all",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 99,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: CircleAvatar(
                      backgroundColor: const Color(0xff1A3848),
                      radius: 30,
                      child: Image.asset("assets/vege.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: CircleAvatar(
                      backgroundColor: const Color(0xff1A3848),
                      radius: 30,
                      child: Image.asset("assets/cheeseee.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: CircleAvatar(
                      backgroundColor: const Color(0xff1A3848),
                      radius: 30,
                      child: Image.asset("assets/meat.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: CircleAvatar(
                      backgroundColor: const Color(0xff1A3848),
                      radius: 30,
                      child: Image.asset("assets/vege.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: CircleAvatar(
                      backgroundColor: const Color(0xff1A3848),
                      radius: 30,
                      child: Image.asset("assets/milk.png"),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomCardAds extends StatelessWidget {
  const CustomCardAds({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        image: DecorationImage(
            image: AssetImage("assets/banner.png"), fit: BoxFit.cover),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              const Text(
                "Christmas offer",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const Text(
                "Get 25%",
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
              const SizedBox(
                height: 12,
              ),
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
                child: Container(
                  // height: 165,
                  color: Colors.red.shade600,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Grab Offer"),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 15,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/avatar.png"),
              const SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Good Morning",
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "OKWHAROBO Solomon M",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          MaterialButton(
            minWidth: 100,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(67),
            ),
            color: const Color(0xff1A3848),
            child: const DropDownCustom(),
          )
        ],
      ),
    );
  }
}

class DropDownCustom extends StatefulWidget {
  const DropDownCustom({super.key});

  @override
  State<DropDownCustom> createState() => _DropDownCustomState();
}

class _DropDownCustomState extends State<DropDownCustom> {
  String dropDownValue = "My Flat";
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropDownValue,
      dropdownColor: Theme.of(context).scaffoldBackgroundColor,
      underline: const SizedBox(),
      style: TextStyle(
        fontSize: 10,
        color: Theme.of(context).colorScheme.primary,
      ),
      // isDense: true,
      // menuMaxHeight: 42,
      borderRadius: BorderRadius.circular(10),
      icon: Icon(
        Icons.keyboard_arrow_down_sharp,
        color: Theme.of(context).colorScheme.primary,
      ),
      iconEnabledColor: Theme.of(context).colorScheme.primary,
      items: <String>["My Flat", "School", "Church"]
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          dropDownValue = value!;
        });
      },
    );
  }
}
