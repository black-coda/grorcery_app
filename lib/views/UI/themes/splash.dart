import 'package:flutter/material.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  final pageController = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          const ScreenOne(),
          Container(
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:
                EdgeInsets.only(right: MediaQuery.of(context).size.width / 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Image.asset("assets/leaf.png")],
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          Image.asset('assets/logo.png'),
          const SizedBox(
            height: 32,
          ),
          SizedBox(
            width: 316,
            child: Text(
              "Get your groceries delivered to your home",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          SizedBox(
            width: 274,
            child: Text(
              'The best delivery app in town for delivering your daily fresh groceries',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          MaterialButton(
            onPressed: () {},
            minWidth: 190.0,
            height: 53,
            padding: const EdgeInsets.all(16),
            color: Theme.of(context).colorScheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Text(
              "Shop Now",
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          const SizedBox(
            height: 0.5,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Image.asset("assets/blurleaf.png")],
          ),
          Expanded(
            child: Image.asset(
              "assets/bottom_food.jpg",
              color: Theme.of(context).appBarTheme.backgroundColor,
              colorBlendMode: BlendMode.screen,
            ),
          )
        ],
      ),
    );
  }
}
