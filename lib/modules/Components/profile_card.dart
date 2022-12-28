import 'package:flutter/material.dart';
import 'package:proyecto/modules/Components/profile_info.dart';
import 'package:proyecto/plat_form_service.dart';

// ignore: must_be_immutable
class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      margin: const EdgeInsets.only(top: 70),
      padding: EdgeInsets.fromLTRB(
          10, PlatFormServices.isMobile(context) ? 80 : 20, 10, 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.1),
                blurRadius: 5,
                spreadRadius: 2)
          ]),
      child: ProfileInfo(),
    );
  }
}
