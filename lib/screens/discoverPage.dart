import 'package:flutter/material.dart';

class Discoverpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: Text('Discover', style: themeData.textTheme.displaySmall,)),
                  IconButton(onPressed: (){}, icon: Image.asset('assets/images/icons/search.png',fit: BoxFit.fill,width: 40,))
                  ,IconButton(onPressed: (){}, icon: Image.asset('assets/images/icons/aware.png',fit:BoxFit.fill, width: 40,))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}