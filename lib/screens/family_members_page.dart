import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';

import '../models/number.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});

  final List<ItemModel> nums = const [
    ItemModel(
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'father',
        sound: 'sounds/family_members/father.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_mother.png',
        jpName: "Hahaoya",
        enName: "mother",
        sound: 'sounds/family_members/mother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: "Ojisan",
        enName: "grandfather",
        sound: 'sounds/family_members/grand father.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: "Sobo",
        enName: "grandmother",
        sound: 'sounds/family_members/grand mother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_daughter.png',
        jpName: "Musume",
        enName: "daughter",
        sound: 'sounds/family_members/daughter.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: "Nisan",
        enName: "older brother",
        sound: 'sounds/family_members/older bother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: "Ane",
        enName: "older sister",
        sound: 'sounds/family_members/older sister.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_son.png',
        jpName: "Musuko",
        enName: "son",
        sound: 'sounds/family_members/son.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: "Otōto",
        enName: "younger brother",
        sound: 'sounds/family_members/younger brother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: "Imōto",
        enName: "younger sister",
        sound: 'sounds/family_members/younger sister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4D9),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text(
          "Family Members",
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
            color: Color(0xff5A873D),
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
