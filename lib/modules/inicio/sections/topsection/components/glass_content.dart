import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../login/login_page.dart';
import '../../../constants.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          constraints:
              BoxConstraints(maxWidth: 1400, maxHeight: size.height * 0.85),
          width: double.infinity,
          color: Colors.white.withOpacity(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.white,
                            Colors.yellow,
                            Colors.blueAccent,
                          ])),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
              ),
              const Text(
                "Grupo \n GIETAES",
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.5,
                ),
              ),
              Text(
                "Tutorias Entre Pares",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
