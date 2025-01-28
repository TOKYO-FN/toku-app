import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';

import '../models/number.dart';

class Phrases extends StatelessWidget {
  const Phrases({super.key});

  final List<ItemModel> nums = const [
    ItemModel(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one',
        sound: 'sounds/numbers/number_one_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_two.png',
        jpName: "ni",
        enName: "two",
        sound: 'sounds/numbers/number_two_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_three.png',
        jpName: "san",
        enName: "three",
        sound: 'sounds/numbers/number_three_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_four.png',
        jpName: "shi",
        enName: "four",
        sound: 'sounds/numbers/number_four_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_five.png',
        jpName: "go",
        enName: "five",
        sound: 'sounds/numbers/number_five_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_six.png',
        jpName: "roku",
        enName: "six",
        sound: 'sounds/numbers/number_six_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_seven.png',
        jpName: "nana",
        enName: "seven",
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_eight.png',
        jpName: "hachi",
        enName: "eight",
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_nine.png',
        jpName: "kyu",
        enName: "nine",
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_ten.png',
        jpName: "jyu",
        enName: "ten",
        sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4D9),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text(
          "Numbers",
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
            color: Color(0xff51B0D5),
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
