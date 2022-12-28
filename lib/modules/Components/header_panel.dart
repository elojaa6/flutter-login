import 'package:flutter/material.dart';
import 'package:proyecto/ReUsableComponent/re_usable_button.dart';
import 'package:proyecto/plat_form_service.dart';

// ignore: must_be_immutable
class HeaderPanel extends StatelessWidget {
  HeaderPanel({super.key});

  late bool isMobile = false;

  @override
  Widget build(BuildContext context) {
    isMobile = PlatFormServices.isMobile(context) ? true : false;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width / 10, vertical: isMobile ? 30 : 10),
      child: isMobile
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [leftSidePanel(), rightSidePanel()],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [leftSidePanel(), rightSidePanel()],
            ),
    );
  }

  Widget leftSidePanel() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text('Timeless',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  letterSpacing: .5)),
          isMobile ? const Spacer(flex: 1) : const SizedBox(width: 50),
          iconLabelButtons('DOCS', "../../../images/icon/document")
        ],
      );

  Widget rightSidePanel() =>
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        logoButton("../../../images/icon/facebook.svg"),
        logoButton("../../../images/icon/twitter.svg"),
        logoButton("../../../images/icon/linkedin.svg"),
        normalButton('DOWNLOAD', Colors.grey,
            "../../../images/icon/download.png", Colors.grey, Colors.white)
      ]);
}
