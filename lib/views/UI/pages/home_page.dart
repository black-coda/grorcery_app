import 'package:flutter/material.dart';
import "dart:math" as math;

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8),
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
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
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
                Text(
                  "See all",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.78,
                ),
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 163,
                    decoration: BoxDecoration(
                      color: const Color(0xff1A3848),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 19.0, horizontal: 9.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Image For Vege
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

                          //Row Price

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "1kg,  \$4",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Color(
                                    0xffFF324B,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: CircleAvatar(
                                  backgroundColor: Theme.of(context)
                                      .appBarTheme
                                      .backgroundColor,
                                  child: Icon(
                                    Icons.add,
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
              ),
            ),
          ],
        );
      },
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 145,
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
                      child: Image.asset("assets/cheese.png"),
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
              const Text("Christmas offer"),
              const Text(
                "Get 25%",
                style: TextStyle(
                  fontSize: 32,
                ),
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
            minWidth: 115,
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
      underline: const SizedBox(),
      style: const TextStyle(
        fontSize: 10,
        color: Colors.white,
      ),
      isDense: true,
      menuMaxHeight: 42,
      borderRadius: BorderRadius.circular(67),
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
            style: const TextStyle(fontSize: 30),
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
