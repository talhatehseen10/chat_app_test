import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Inventory Management",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ],
    );
  }
}
