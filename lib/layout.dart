import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/nav_bar.dart';

class Layout extends StatelessWidget {
  const Layout({super.key, required this.child});

  final Widget child;

  final LinearGradient bgGradient = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF0A0A0A),
      Color(0xFF1A1A1A),
    ],
  );

  @override
  Widget build(BuildContext context) {
    const double radius = 0.6;

    return Scaffold(
      bottomNavigationBar: NavBar(),
      body: Stack(
        children: [
          _FancyBackground(
            backgroundColor: Color(0xFF0A0A0A),
            circle1: RadialGradient(
              colors: [
                Colors.blueAccent[200]!.withValues(alpha: 0.33),
                Colors.transparent,
              ],
              radius: radius,
            ),
            circle2: RadialGradient(
              colors: [
                Colors.deepPurpleAccent.withValues(alpha: 0.25),
                Colors.transparent,
              ],
              radius: radius,
            ),
          ),
          SafeArea(child: child),
        ],
      ),
    );
  }
}

class _FancyBackground extends StatelessWidget {
  const _FancyBackground({
    required this.backgroundColor,
    required this.circle1,
    required this.circle2,
  });

  final Color backgroundColor;
  final RadialGradient circle1;
  final RadialGradient circle2;

  final double size = 850;
  final double vPadding = -250;
  final double hPadding = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: backgroundColor),
        Positioned(
          top: vPadding,
          left: hPadding,
          child: Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              gradient: circle1,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          bottom: vPadding,
          right: hPadding,
          child: Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              gradient: circle2,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
