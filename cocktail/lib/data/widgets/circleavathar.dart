import 'package:flutter/material.dart';

class Circleavathar extends StatelessWidget {
  const Circleavathar({super.key,required this.url});
final String url;
  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      child: Image(image: AssetImage(url)),
      backgroundColor: Colors.grey,
      maxRadius: 30,
    );
  }
}