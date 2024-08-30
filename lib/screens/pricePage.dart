import 'package:flutter/material.dart';

class PricePage extends StatelessWidget {
  const PricePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(80), bottomRight: Radius.circular(80
                )),
                child: Image.asset('assets/images/hotel_pic/pic1.jpg',),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){}, icon: Image.asset('assets/images/icons/back_icon.png')),
                  IconButton(onPressed: (){}, icon: Image.asset('assets/images/icons/heart_icon.png')),
                ],
              )

            ],
          )
        ],
      )),
    );
  }
}
