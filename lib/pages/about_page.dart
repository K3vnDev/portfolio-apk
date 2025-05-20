import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/icon_header.dart';
import 'package:portfolio_app/widgets/svg_button.dart';
import 'package:portfolio_app/widgets/paragraph.dart';
import 'package:portfolio_app/utils/consts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: Consts.horizontalPadding,
          vertical: Consts.topPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconHeader(
              text: "Sobre mí",
              icon: Icons.person,
            ),
            SizedBox(height: 24),
            Paragraph(
              text:
                  "Soy Kevin Rodríguez, estudiante de noveno semestre de Ingeniería Multimedia y tengo 20 años. Me apasiona crear experiencias digitales que mezclan funcionalidad y creatividad. Me enfoco en desarrollo de videojuegos y web, donde combino programación y diseño para construir mundos interactivos e interfaces útiles.",
            ),
            SizedBox(height: 14),
            Paragraph(
              text:
                  "Siempre busco mejorar, experimentar con nuevas herramientas y asumir retos técnicos que me reten tanto en lo creativo como en lo funcional.",
            ),
            SizedBox(height: 32),
            SVGButton(
              label: "Mi GitHub",
              svgPath: "assets/svgs/github.svg",
              href: "https://github.com/K3vnDev",
            ),
            SizedBox(height: 8),
            SVGButton(
              label: "Descarga mi CV",
              svgPath: "assets/svgs/pdf.svg",
              href:
                  "https://portfolio-kevndev.netlify.app/kevin-rodriguez_curriculum-en.pdf",
            ),
          ],
        ),
      ),
    );
  }
}
