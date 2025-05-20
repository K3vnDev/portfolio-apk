import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_app/pages/about_page.dart';
import 'package:portfolio_app/layout.dart';
import 'package:portfolio_app/pages/project_view_page.dart';
import 'package:portfolio_app/pages/projects_page.dart';
import 'package:portfolio_app/utils/consts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter router = GoRouter(routes: [
    ShellRoute(
      builder: (context, state, child) => Layout(child: child),
      routes: [
        GoRoute(
          path: "/",
          builder: (context, state) => ProjectsPage(),
        ),
        GoRoute(
          path: "/about",
          builder: (context, state) => AboutPage(),
        ),
        GoRoute(
          path: "/project/:id",
          builder: (context, state) {
            final id = state.pathParameters['id']!;
            return ProjectViewPage(id: id);
          },
        )
      ],
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: Consts.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
