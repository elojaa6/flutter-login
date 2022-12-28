// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:proyecto/plat_form_service.dart';

class TopBackgroud extends StatelessWidget {
  const TopBackgroud({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      height: PlatFormServices.isMobile(context) ? 300 : 450,
      child: Image.asset('../../images/backgroud.jpg', fit: BoxFit.cover),
    );
  }
}
