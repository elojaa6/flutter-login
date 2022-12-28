import 'package:flutter/material.dart';
import 'package:proyecto/modules/inicio/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.imageSrc,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        /*padding: EdgeInsets.symmetric({
          double vertical: kDefaultPadding, 
          double horizontal: kDefaultPadding*2.5});*/
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: const BorderSide(
                    color: Color.fromARGB(255, 229, 230, 247)))),
      ),
      onPressed: () {
        press;
      },
      child: Row(
        children: [
          Image.asset(imageSrc, height: 40),
          const SizedBox(width: kDefaultPadding),
          Text(text),
        ],
      ),
    );
  }
}
