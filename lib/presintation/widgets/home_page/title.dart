import 'package:flutter/material.dart';

class TitleHomePage extends StatelessWidget {
  const TitleHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.maxFinite,
      width: double.maxFinite,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            "Montreal",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            "19°",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            "Mostly Clear",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(
            "H:24°   L:18°",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
