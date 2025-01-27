import 'package:flutter/material.dart';
import '../components/category_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4D9),
      appBar: AppBar(
        title: Text(
          "Toku",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff46322B),
      ),
      body: Column(
        children: [
          Category(
            text: "Numbers",
            color: Color(0xffef9235),
          ),
          Category(
            text: "FamilyMembers",
            color: Color(0xff5A873D),
          ),
          Category(
            text: "Colors",
            color: Color(0xff854CAE),
          ),
          Category(
            text: "Phrases",
            color: Color(0xff51B0D5),
          ),
        ],
      ),
    );
  }
}
