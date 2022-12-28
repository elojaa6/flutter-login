// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Lista {
  final int id;
  final String title, image;
  final Color color;

  Lista(
      {required this.id,
      required this.title,
      required this.image,
      required this.color});
}

List<Lista> lista = [
  Lista(
    id: 1,
    title: "R1",
    image: "assets/images/ui.png",
    color: const Color(0xFFFFF3DD),
  ),
  Lista(
    id: 2,
    title: "R2",
    image: "assets/images/Intreaction_design.png",
    color: const Color(0xFFFFE0E0),
  ),
  Lista(
    id: 3,
    title: "Matias Cuenca",
    image: "assets/images/Intreaction_design.png",
    color: const Color(0xFFFFE0E0),
  ),
  Lista(
    id: 4,
    title: "John Enriquez",
    image: "assets/images/Intreaction_design.png",
    color: const Color(0xFFFFE0E0),
  ),
];
