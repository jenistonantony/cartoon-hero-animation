import 'package:flutter/material.dart';
import 'package:hero_animation/home/home_info.dart';

class HeroDetail extends StatelessWidget {
  final HeroInfo items;
  const HeroDetail({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: Text(items.title),
      ),
      body: Center(
          child: Hero(tag: items.image, child: Image.asset(items.image))),
    );
  }
}
