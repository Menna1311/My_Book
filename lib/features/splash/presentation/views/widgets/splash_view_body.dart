import 'package:books_remake/core/utils/assets.dart';
import 'package:books_remake/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        GoRouter.of(context).push(AppRoutes.homeview);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xFF87BFDD), Color(0xFF3A97C8)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      alignment: Alignment.center,
      child: Image.asset(
        Assets.logo,
        width: 200,
        height: 200,
        color: const Color(0xFF4F2611),
      ),
    );
  }
}
