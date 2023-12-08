import 'package:flutter/material.dart';
import 'package:romy_sharing_project/screens/commons/landing/components/landing_body.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LandingBody(),
    );
  }
}
