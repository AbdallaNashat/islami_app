import 'package:flutter/material.dart';

class OnbordaingPages extends StatelessWidget {
  const OnbordaingPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 80.0),
        child: PageView(
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.red,
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 80,
        ),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
              child: Text("Back"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
