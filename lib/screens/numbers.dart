import 'package:flutter/material.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});
  final Number one = const Number(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one');

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
      body: Container(
        color: Color(0xffef9235),
        height: 100,
        child: Row(
          children: [
            Container(
              color: Color(0xffFFF4D9),
              child: Image.asset(
                one.image,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    one.jpName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    one.enName,
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
      ),
    );
  }
}

class Number {
  final String image;
  final String jpName;
  final String enName;

  const Number(
      {required this.image, required this.jpName, required this.enName});
}
