import 'package:flutter/material.dart';
import 'package:proyecto/ReUsableComponent/re_usable_button.dart';
import 'package:proyecto/ReUsableComponent/re_usable_text.dart';
import 'package:proyecto/plat_form_service.dart';

// ignore: must_be_immutable
class ProfileInfo extends StatelessWidget {
  ProfileInfo({super.key});

  String data = 'HoLA';

  late bool isMobile;

  @override
  Widget build(BuildContext context) {
    isMobile = PlatFormServices.isMobile(context) ? true : false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(flex: 1),
              socialValue('Friends', 22),
              socialValue('Photos', 10),
              socialValue('Comments', 86),
              const Spacer(flex: 10),
              normalButton('Edit', Colors.white, '', Colors.white,
                  const Color.fromARGB(255, 77, 198, 186)),
              const Spacer(
                flex: 1,
              )
            ],
          ),
        ),
        SizedBox(height: isMobile ? 20 : 50),
        largeBoldTextBlack('Elvis Loja'),
        const SizedBox(height: 10),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.location_pin, size: 20, color: Colors.grey[400]),
              const SizedBox(width: 5),
              normalGreyText('Cuenca, Azuay')
            ]),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.work, size: 20, color: Colors.grey[400]),
            const SizedBox(width: 5),
            normalGreyText('Solution Manager - Creative Team Oficcer ')
          ],
        ),
        const SizedBox(height: 10),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.school, size: 20, color: Colors.grey[400]),
              const SizedBox(width: 5),
              normalGreyText('University Politecnica Salesiana')
            ]),

        //description

        Divider(height: 30, thickness: 1, color: Colors.grey[300]),
        normalGreyText(data),
        const SizedBox(height: 10),
        textButtons('Show more', Colors.green)
      ],
    );
  }

  Widget socialValue(String label, int value) => Container(
        padding: const EdgeInsets.all(5),
        height: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '$value',
              style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              label,
              style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      );
}
