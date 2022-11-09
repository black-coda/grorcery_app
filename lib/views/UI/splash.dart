import 'package:flutter/material.dart';
import 'package:grorcery_app_/views/UI/auth/register_ui.dart';
// import 'package:google_fonts/google_fonts.dart';

import 'auth/login_ui.dart';
import 'pages/home_page.dart';

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
        children: const [
          ScreenOne(),
          LoginScreen(),
          RegisterScreen(),
          HomeWidget(),
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
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width / 30),
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
              height: 43,
              padding: const EdgeInsets.all(16),
              color: Theme.of(context).colorScheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80),
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
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/bottom_food.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
