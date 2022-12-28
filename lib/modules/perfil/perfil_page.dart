import 'package:flutter/material.dart';
import 'package:proyecto/modules/Components/footer_panel.dart';
import 'package:proyecto/modules/Components/header_panel.dart';
import 'package:proyecto/modules/Components/nav_bar_cell.dart';
import 'package:proyecto/modules/Components/profile_panel.dart';
import 'package:proyecto/modules/Components/top_backgroud.dart';
import 'package:proyecto/modules/Components/topbar_contents.dart';
import 'package:proyecto/plat_form_service.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PlatFormServices.isMobile(context)
          ?
          //ResponsiveWidget.isSmallScreen(context)?
          AppBar(
              iconTheme: const IconThemeData(color: Color(0xFF077BD7)),
              backgroundColor: Colors.white,
              elevation: 0,
              centerTitle: true,
              title: const Text(
                "Menu",
                style: TextStyle(
                    color: Color(0xFF077BD7), fontWeight: FontWeight.w900),
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 70),
              child: const TopBarContents(),
            ),
      drawer: const NavBarCell(),
      backgroundColor: const Color(0xffdde9e9),
      body: SafeArea(
          child: Stack(
        children: [
          const TopBackgroud(),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [HeaderPanel(), const ProfilePanel(), FooterPanel()],
            ),
          )
        ],
      )),
    );
  }
}
