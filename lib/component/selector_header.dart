import 'package:flutter/material.dart';

import 'selector_button.dart';

class SelectorHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 5 / 3,
          child: Image.asset("p1.jpeg", fit: BoxFit.cover),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SelectorButton(),
            SelectorButton(),
            SelectorButton(),
            SelectorButton(),
          ],
        ),
      ],
    );
  }
}
