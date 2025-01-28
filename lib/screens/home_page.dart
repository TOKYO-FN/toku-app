import 'package:flutter/material.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_members_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';
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
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Numbers();
              }));
            },
            text: "Numbers",
            color: Color(0xffef9235),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyMembers();
              }));
            },
            text: "FamilyMembers",
            color: Color(0xff5A873D),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Colorss();
              }));
            },
            text: "Colors",
            color: Color(0xff854CAE),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Phrases();
              }));
            },
            text: "Phrases",
            color: Color(0xff51B0D5),
          ),
        ],
      ),
    );
  }
}
