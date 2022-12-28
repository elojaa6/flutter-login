import 'package:flutter/material.dart';
import 'package:proyecto/ReUsableComponent/re_usable_button.dart';
import 'package:proyecto/ReUsableComponent/re_usable_text.dart';
import 'package:proyecto/plat_form_service.dart';

// ignore: must_be_immutable
class FooterPanel extends StatelessWidget {
  FooterPanel({super.key});

  late bool isMobile, isDesktop;

  @override
  Widget build(BuildContext context) {
    isMobile = PlatFormServices.isMobile(context) ? true : false;
    isDesktop = PlatFormServices.isDesktop(context) ? true : false;

    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: isMobile ? 0 : width / 10, vertical: isMobile ? 0 : 20),
      padding: EdgeInsets.all(isMobile ? 5 : 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: isMobile
              ? const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))
              : BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.1),
                blurRadius: 5,
                spreadRadius: 2)
          ]),
      child: isDesktop
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [socialNetwork(), webInfo()],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [socialNetwork(), webInfo()],
            ),
    );
  }

  Widget socialNetwork() => Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            boldBlackText('Let\'s keep in touch!'),
            normalGreyText(
                'Find us on of these platforms, we respond 1-2 business days.'),
            const SizedBox(height: 10),
            Row(
              children: [
                if (!isDesktop) const Spacer(flex: 1),
                floatingIconsButtons('../../../images/icon/facebook.svg'),
                floatingIconsButtons('../../images/icon/linkedin.svg'),
                floatingIconsButtons('../../images/icon/skype.svg'),
                floatingIconsButtons('../../images/icon/twitter.svg'),
                floatingIconsButtons('../../images/icon/youtube.svg'),
                if (!isDesktop) const Spacer(flex: 1)
              ],
            )
          ],
        ),
      );

  Widget floatingIconsButtons(String path) => Container(
        margin: const EdgeInsets.all(5),
        height: 40,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          child: colorLogoButton(path),
          onPressed: () {},
        ),
      );

  Widget webInfo() => Container(
        margin: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            useFulLink(),
            isMobile ? const Spacer(flex: 1) : const SizedBox(width: 50),
            otherResources()
          ],
        ),
      );

  Widget useFulLink() =>
      Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        normalGreyText('Useful Links'),
        textButtons('About us', const Color.fromARGB(255, 32, 31, 31)),
        textButtons('Blog', const Color.fromARGB(255, 32, 31, 31)),
        textButtons('Github', const Color.fromARGB(255, 32, 31, 31)),
        textButtons('Free Products', const Color.fromARGB(255, 32, 31, 31)),
      ]);

  Widget otherResources() =>
      Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        normalGreyText('Other Resources'),
        textButtons('MIT License', const Color.fromARGB(255, 32, 31, 31)),
        textButtons(
            'Terms & Conditions', const Color.fromARGB(255, 32, 31, 31)),
        textButtons('Privacy Policy', const Color.fromARGB(255, 32, 31, 31)),
        textButtons('Contac Us', const Color.fromARGB(255, 32, 31, 31)),
      ]);
}
