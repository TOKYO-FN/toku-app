import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';

import '../models/number.dart';

class Colorss extends StatelessWidget {
  const Colorss({super.key});

  final List<ItemModel> nums = const [
    ItemModel(
        image: 'assets/images/colors/color_black.png',
        jpName: 'Kuro',
        enName: 'black',
        sound: 'sounds/colors/black.wav'),
    ItemModel(
        image: 'assets/images/colors/color_brown.png',
        jpName: "Chairo",
        enName: "brown",
        sound: 'sounds/colors/brown.wav'),
    ItemModel(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: "Dasutiierō",
        enName: "dusty yellow",
        sound: 'sounds/colors/dusty yellow.wav'),
    ItemModel(
        image: 'assets/images/colors/color_gray.png',
        jpName: "Gurē",
        enName: "gray",
        sound: 'sounds/colors/gray.wav'),
    ItemModel(
        image: 'assets/images/colors/color_green.png',
        jpName: "Midori",
        enName: "green",
        sound: 'sounds/colors/green.wav'),
    ItemModel(
        image: 'assets/images/colors/color_red.png',
        jpName: "Aka",
        enName: "red",
        sound: 'sounds/colors/red.wav'),
    ItemModel(
        image: 'assets/images/colors/color_white.png',
        jpName: "Shiro",
        enName: "white",
        sound: 'sounds/colors/white.wav'),
    ItemModel(
        image: 'assets/images/colors/yellow.png',
        jpName: "Kiiro",
        enName: "yellow",
        sound: 'sounds/colors/yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4D9),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text(
          "Colors",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: nums.length,
        itemBuilder: (context, index) {
          return Item(
            number: nums[index],
            color: Color(0xff854CAE),
          );
        },
      ),
    );
  }

// List<Item> getItems(List<Number> numbers) {
//   List<Item> listItems = [];
//   for (int i = 0; i < numbers.length; i += 1) {
//     listItems.add(Item(number: numbers[i]));
//   }
//   return listItems;
// }
}
