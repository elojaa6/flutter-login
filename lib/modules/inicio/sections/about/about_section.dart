import 'package:flutter/material.dart';
import 'package:proyecto/modules/inicio/constants.dart';
import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';
import 'components/texto_con_mensaje.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                    text:
                        "Un encuentro y crecimiento mutuo Tutor-Tutorado. Se desenvuelve en un ambiente de familiaridad, confianza y respeto mutuo. Propicia una relación educativa horizontal."),
              ),
              ExperienceCard(numOfExp: "3"),
              Expanded(
                child: AboutSectionText(
                    text:
                        "El GIETAES busca consolidarse en tres años como un equipo efectivo en tutorías académicas convirtiéndose en un referente a nivel nacional de la aplicación de metodologías alternativas para la disminución de índices de repitencia y deserción en los primeros años de educación universitaria."),
              )
            ],
          ),
          const SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              TextoConMesanje(),
              Expanded(
                child: AboutSectionText(
                    text:
                        "GIETAES es un equipo integrado por docentes del área de Razón y Fe y tutores de alto rendimiento académico de las diferentes carreras, cuyo propósito es contribuir a elevar la calidad de la educación para disminuir los índices de deserción y repitencia, de los estudiantes de los primeros años de la UPS Sede Cuenca."),
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding * 3),
          /*Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                imageSrc: "assets/images/hand.png",
                text: "Hire Me!",
                press: () {},
              ),
              SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                imageSrc: "assets/images/download.png",
                text: "Download CV",
                press: () {},
              ),
            ],
          ),*/
        ],
      ),
    );
  }
}
