import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';

import '../models/number.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});
  final Number one = const Number(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one');

  final List<Number> nums = const [
    Number(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one'),
    Number(
        image: 'assets/images/numbers/number_two.png',
        jpName: "ni",
        enName: "two"),
    Number(
        image: 'assets/images/numbers/number_three.png',
        jpName: "san",
        enName: "three"),
    Number(
        image: 'assets/images/numbers/number_four.png',
        jpName: "shi",
        enName: "four"),
    Number(
        image: 'assets/images/numbers/number_five.png',
        jpName: "go",
        enName: "five"),
    Number(
        image: 'assets/images/numbers/number_six.png',
        jpName: "roku",
        enName: "six"),
    Number(
        image: 'assets/images/numbers/number_seven.png',
        jpName: "nana",
        enName: "seven"),
    Number(
        image: 'assets/images/numbers/number_eight.png',
        jpName: "hachi",
        enName: "eight"),
    Number(
        image: 'assets/images/numbers/number_nine.png',
        jpName: "kyu",
        enName: "nine"),
    Number(
        image: 'assets/images/numbers/number_ten.png',
        jpName: "jyu",
        enName: "ten"),
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
          );
        },
        // children: getItems(nums),
      ),
    );
  }

  List<Item> getItems(List<Number> numbers) {
    List<Item> listItems = [];
    for (int i = 0; i < numbers.length; i += 1) {
      listItems.add(Item(number: numbers[i]));
    }
    return listItems;
  }
}
