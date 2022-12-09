import 'package:flutter/material.dart';
import 'package:proyecto/modules/inicio/sections/service/service_section.dart';
import 'package:proyecto/modules/inicio/sections/topsection/top_section.dart';

import 'constants.dart';
import 'sections/about/about_section.dart';
import 'sections/contact/contact_section.dart';
import 'sections/recent_work/recent_work_section.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          TopSection(),
          SizedBox(height: kDefaultPadding * 2),
          AboutSection(),
          ServiceSection(),
          RecentWorkSection(),
          //Feedback(),
          SizedBox(height: kDefaultPadding),
          ContactSection(),
        ],
      )),
    );
  }
}
