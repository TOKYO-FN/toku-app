import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/components/phrase_item.dart';

import '../models/number.dart';

class Phrases extends StatelessWidget {
  const Phrases({super.key});

  final List<ItemModel> phrasesList = const [
    ItemModel(
        jpName: 'Kimasu ka',
        enName: 'Are You Coming',
        sound: 'sounds/phrases/are_you_coming.wav'),
    ItemModel(
        jpName: "Kōdoku suru koto o wasurenaide kudasai",
        enName: "Don't forget to subscribe",
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    ItemModel(
        jpName: "Go kibun wa ikagadesu ka",
        enName: "how are you feeling",
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    ItemModel(
        jpName: "Anime ga daisukidesu",
        enName: "I love anime",
        sound: 'sounds/phrases/i_love_anime.wav'),
    ItemModel(
        jpName: "Puroguramingu ga daisukidesu",
        enName: "I love programming",
        sound: 'sounds/phrases/i_love_programming.wav'),
    ItemModel(
        jpName: "Puroguramingu wa kantandesu",
        enName: "Programming is easy",
        sound: 'sounds/phrases/programming_is_easy.wav'),
    ItemModel(
        jpName: "Anata no namae wa nandesuka",
        enName: "What is your name",
        sound: 'sounds/phrases/what_is_your_name.wav'),
    ItemModel(
        jpName: "Doko ni iku no",
        enName: "Where are you going",
        sound: 'sounds/phrases/where_are_you_going.wav'),
    ItemModel(
        jpName: "Hai, kimasu",
        enName: "Yes im coming",
        sound: 'sounds/phrases/yes_im_coming.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4D9),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text(
          "Phrases",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return PhraseItem(
            itemModel: phrasesList[index],
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
