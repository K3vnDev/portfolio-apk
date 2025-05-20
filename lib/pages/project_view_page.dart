import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_app/utils/technologies.dart';
import 'package:portfolio_app/utils/consts.dart';
import 'package:portfolio_app/utils/project.dart';
import 'package:portfolio_app/utils/technology.dart';
import 'package:portfolio_app/widgets/header.dart';
import 'package:portfolio_app/widgets/svg_button.dart';
import 'package:portfolio_app/widgets/paragraph.dart';

class ProjectViewPage extends StatelessWidget {
  ProjectViewPage({super.key, required this.id})
      : project = Consts.projects.firstWhere((p) => p.id == id);

  final String id;
  final Project project;

  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 12),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: _BackButton(),
        ),
        _Project(project: project),
      ],
    );
  }
}

class _Project extends StatelessWidget {
  const _Project({required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        _Images(images: project.images),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Consts.horizontalPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 28),
              Header(text: project.name),
              SizedBox(height: 12),
              Paragraph(text: project.desc),
              SizedBox(height: 12),
              _Technologies(technologies: project.technologies),
              SizedBox(height: 22),
              SVGButton(
                label: "Ver el código",
                svgPath: 'assets/svgs/github.svg',
                href: project.codeUrl,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _Images extends StatelessWidget {
  const _Images({required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.75;

    return SizedBox(
      height: 220,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        padding:
            const EdgeInsets.symmetric(horizontal: Consts.horizontalPadding),
        separatorBuilder: (context, index) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(
              images[index],
              width: width,
              height: 220,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}

class _Technologies extends StatelessWidget {
  const _Technologies({required this.technologies});

  final List<Technologies> technologies;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: technologies.length,
        separatorBuilder: (context, index) => SizedBox(width: 8),
        itemBuilder: (context, index) {
          final Technology tech =
              Consts.technologies[technologies[index].index];

          return Container(
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(color: Colors.white.withAlpha(33)),
              borderRadius: BorderRadius.all(Radius.circular(99)),
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  spacing: 8,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: tech.color,
                        border: Border.all(color: Colors.white.withAlpha(50)),
                        borderRadius: BorderRadius.all(Radius.circular(99)),
                      ),
                      child: SizedBox(
                        width: 12,
                        height: 12,
                      ),
                    ),
                    Text(
                      tech.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: IconButton(
        onPressed: () => context.go('/'),
        icon: Icon(
          Icons.arrow_back,
          size: 32,
        ),
      ),
    );
  }
}
