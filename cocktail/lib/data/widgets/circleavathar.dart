import 'package:flutter/material.dart';

class Circleavathar extends StatelessWidget {
  const Circleavathar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Colors.grey,
      maxRadius: 30,
    );
  }
}