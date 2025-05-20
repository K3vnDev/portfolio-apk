import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/technologies.dart';
import 'package:portfolio_app/utils/project.dart';
import 'package:portfolio_app/utils/technology.dart';

class Consts {
  Consts._();

  static const String appName = "Kevin's Portfolio";
  static const double horizontalPadding = 32;
  static const double topPadding = 80;

  static const List<Project> projects = [
    Project(
      id: "001",
      name: "My Snowy Friend",
      desc:
          "Un juego de puzles 3D en el que encarnas a un muñeco de nieve que, tras encontrar a un pequeño gato abandonado en un trineo en medio de la nieve, emprende un viaje para devolverlo a sus dueños. ",
      images: [
        "assets/images/mysnowyfriend/msf_1.png",
        "assets/images/mysnowyfriend/msf_2.png",
        "assets/images/mysnowyfriend/msf_3.png",
      ],
      technologies: [
        Technologies.unity,
        Technologies.csharp,
        Technologies.blender,
      ],
      codeUrl: "https://github.com/K3vnDev/my-snowy-friend",
    ),
    Project(
      id: "002",
      name: "Studymate",
      desc:
          "Potencia tu aprendizaje con IA. Mate, tu asistente virtual, te ayudará a crear, seguir y completar planes de estudio personalizados.",
      images: [
        "assets/images/studymate/sm_1.png",
        "assets/images/studymate/sm_2.png",
        "assets/images/studymate/sm_3.png",
      ],
      technologies: [
        Technologies.nextjs,
        Technologies.typescript,
      ],
      codeUrl: "https://github.com/K3vnDev/studymate",
    ),
    Project(
      id: "003",
      name: "Dizzy Cat",
      desc:
          "Un juego corto enfocado en una sola mecánica. Selecciona tu personaje y gira el escenario hasta lograr tu objetivo, ¡no te marees!",
      images: [
        "assets/images/dizzycat/dc_1.png",
        "assets/images/dizzycat/dc_2.png",
        "assets/images/dizzycat/dc_3.png",
      ],
      technologies: [
        Technologies.unity,
        Technologies.csharp,
      ],
      codeUrl: "https://github.com/K3vnDev/dizzy-cat",
    )
  ];

  static const List<Technology> technologies = [
    Technology(name: 'Unity', color: Color(0xFF222C37)),
    Technology(name: 'Next.js', color: Color(0xFF000000)),
    Technology(name: 'C#', color: Color(0xFF68217A)),
    Technology(name: 'TypeScript', color: Color(0xFF3178C6)),
    Technology(name: 'Blender', color: Color(0xFFF5792A)),
  ];
}
