import 'package:flutter/material.dart';
import 'package:proyecto/modules/inicio/constants.dart';

class TextoConMesanje extends StatelessWidget {
  const TextoConMesanje({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Misión ",
          style: Theme.of(context)
              .textTheme
              .headline2
              ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(height: kDefaultPadding * 2)
      ],
    );
  }
}
