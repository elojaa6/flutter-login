import 'package:flutter/material.dart';
import 'package:proyecto/modules/inicio/components/default_button.dart';
import 'package:proyecto/modules/inicio/components/section_title.dart';
import 'package:proyecto/modules/inicio/constants.dart';
import 'components/social_card.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // this height only for demo
      // height: 500,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg_img_2.png"),
        ),
      ),
      child: Column(
        children: const [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: "Contactanos",
            subTitle: "Para consultas e información sobre tutorias",
            color: Color(0xFF07E24A),
          ),
          ContactBox()
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      margin: const EdgeInsets.only(top: kDefaultPadding * 2),
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocalCard(
                color: const Color(0xFFD9FFFC),
                iconSrc: "../../../images/skype.png",
                name: 'TheFlutterWay',
                press: () {},
              ),
              SocalCard(
                color: const Color(0xFFE4FFC7),
                iconSrc: "../../../images/whatsapp.png",
                name: 'TheFlutterWay',
                press: () {},
              ),
              SocalCard(
                color: const Color(0xFFE8F0F9),
                iconSrc: "../../../images/messanger.png",
                name: 'TheFlutterWay',
                press: () {},
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding * 2),
          const ContactForm(),
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: "Su nombre",
                hintText: "Introduzca su nombre",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: "Dirección de correo electrónico",
                hintText: "Introduzca su dirección de correo electrónico",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: "Número de Teléfono",
                hintText: "Introduzca su número",
              ),
            ),
          ),
          SizedBox(
            // height: 300,
            // TextField by default cover the height, i tryed to fix this problem but i cant
            child: TextFormField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: "Mensaje",
                hintText: "Introduzca un Mensaje",
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: DefaultButton(
                imageSrc: "../../../images/contact_icon.png",
                text: "Contact Me!",
                press: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
