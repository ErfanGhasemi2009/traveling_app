import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';
import 'package:traveling/screens/discoverPage.dart';

class Startpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
            'assets/images/views_pic/on_start_back.png',
            fit: BoxFit.cover,
          )),
          Positioned(
            top: 128,
            left: 64,
            right: 64,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Explore Your Favorite Journey',
                    textAlign: TextAlign.center,
                    style:
                        themeData.textTheme.titleLarge!.copyWith(fontSize: 30),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Let's Make Our Life Better",
                    style: themeData.textTheme.bodyMedium!
                        .copyWith(color: themeData.colorScheme.background),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 128,
            right: 32,
            left: 32,
            child: Container(
              padding: const EdgeInsets.fromLTRB(8, 6, 32, 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(48),
                  gradient: LinearGradient(
                      colors: [Colors.white, Colors.white.withOpacity(0.2)])),
              child: SliderButton(
                baseColor: Colors.white.withOpacity(0.4),
                boxShadow: const BoxShadow(
                    color: Colors.black26, spreadRadius: 3, blurRadius: 30),
                shimmer: true,
                action: () async {
                  return Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Discoverpage()));
                },
                backgroundColor: Colors.transparent,
                label: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      width: 64,
                    ),
                    Text(
                      "Let's Dirscover",
                      style: themeData.textTheme.titleLarge,
                    ),
                    const Icon(
                      Icons.double_arrow_rounded,
                      color: Colors.white70,
                      size: 32,
                    ),
                  ],
                ),
                icon: Text(
                  'Go',
                  style: themeData.textTheme.bodyLarge!
                      .copyWith(fontSize: 22, color: Colors.black54),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
