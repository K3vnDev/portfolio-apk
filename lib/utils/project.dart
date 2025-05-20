import 'package:portfolio_app/utils/technologies.dart';

class Project {
  const Project({
    required this.id,
    required this.name,
    required this.desc,
    required this.images,
    required this.technologies,
    required this.codeUrl,
  });

  final String id;
  final String name;
  final String desc;
  final List<String> images;
  final List<Technologies> technologies;
  final String codeUrl;
}
