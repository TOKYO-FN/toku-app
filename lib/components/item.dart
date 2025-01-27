import 'package:flutter/material.dart';

import '../models/number.dart';

class Item extends StatelessWidget {
  Item({super.key, required this.number});

  Number number;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffef9235),
      height: 100,
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF4D9),
            child: Image.asset(
              number.image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  number.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
