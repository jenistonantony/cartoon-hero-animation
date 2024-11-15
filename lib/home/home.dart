import 'package:flutter/material.dart';
import 'package:hero_animation/home/hero_detail.dart';
import 'package:hero_animation/home/home_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HeroItems();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: const Text(
          "CARTOON",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
          itemCount: controller.items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.green.shade200)),
                child: Center(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HeroDetail(
                                    items: controller.items[index],
                                  )));
                    },
                    title: Text(
                      controller.items[index].title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    subtitle: Text(
                      controller.items[index].subtitle,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green.shade300),
                    ),
                    leading: Hero(
                      tag: controller.items[index].image,
                      child: CircleAvatar(
                        backgroundColor: Colors.green.shade300,
                        radius: 30,
                        backgroundImage:
                            AssetImage(controller.items[index].image),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
