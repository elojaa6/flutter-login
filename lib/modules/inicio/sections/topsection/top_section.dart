import 'package:flutter/material.dart';
import 'package:proyecto/modules/inicio/sections/topsection/components/glass_content.dart';
import 'package:proyecto/modules/inicio/sections/topsection/components/person_pic.dart';

import '../../constants.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints(maxHeight: 750, minHeight: 500),
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('images/backgroud.jpg'),
      )),
      child: Container(
        margin: const EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Stack(
          children: [
            GlassContent(size: size),
            const Positioned(bottom: 0, right: 0, child: PersonPic()),
            /*Positioned(
              bottom: 0,
              child: Menu(),
            )*/
          ],
        ),
      ),
    );
  }
}
