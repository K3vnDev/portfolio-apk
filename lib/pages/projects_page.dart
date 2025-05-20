import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_app/utils/consts.dart';
import 'package:portfolio_app/utils/project.dart';
import 'package:portfolio_app/widgets/header.dart';
import 'package:portfolio_app/widgets/icon_header.dart';
import 'package:portfolio_app/widgets/paragraph.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Consts.horizontalPadding,
      ),
      child: ListView.separated(
        padding: EdgeInsets.only(top: Consts.topPadding, bottom: 70),
        itemBuilder: (context, index) {
          if (index == 0) {
            return Column(
              children: [
                IconHeader(
                  text: "Proyectos destacados",
                  icon: Icons.code,
                ),
                SizedBox(height: 10),
                Paragraph(text: "Toca un proyecto para ver más información.")
              ],
            );
          }
          return _ProjectTile(
            project: Consts.projects[index - 1],
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          height: 40,
          width: 0,
        ),
        itemCount: Consts.projects.length + 1,
      ),
    );
  }
}

class _ProjectTile extends StatelessWidget {
  const _ProjectTile({required this.project});

  final Project project;

  void handleTap(BuildContext context) {
    context.go('/project/${project.id}');
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => handleTap(context),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          border: Border.all(color: Colors.grey[800]!),
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            Image.asset(
              project.images[0],
              width: double.infinity,
              height: 220,
              fit: BoxFit.cover,
            ),
            _Name(project: project)
          ],
        ),
      ),
    );
  }
}

class _Name extends StatelessWidget {
  const _Name({required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 60,
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Colors.black.withValues(alpha: 0.8),
              Colors.black.withValues(alpha: 0.5),
              Colors.transparent,
            ],
          ),
        ),
        alignment: Alignment.center,
        child: Header(
          text: project.name,
          size: HeaderSize.sm,
        ),
      ),
    );
  }
}
