import 'package:flutter/material.dart';
import 'package:proyecto/modules/Components/profile_card.dart';
import 'package:proyecto/plat_form_service.dart';

// ignore: must_be_immutable
class ProfilePanel extends StatelessWidget {
  const ProfilePanel({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = PlatFormServices.isMobile(context) ? true : false;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(isMobile ? 15 : width / 10,
          isMobile ? 0 : 150, isMobile ? 15 : width / 10, 10),
      child: Stack(children: [
        const ProfileCard(),
        Expanded(
            child:
                Container(alignment: Alignment.center, child: profileImage()))
      ]),
    );
  }

  Widget profileImage() => const CircleAvatar(
        radius: 70,
        backgroundImage: AssetImage('../../../images/person.png'),
      );
}
