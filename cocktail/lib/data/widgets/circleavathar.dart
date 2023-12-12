import 'package:flutter/material.dart';

class Circleavathar extends StatelessWidget {
  const Circleavathar({super.key, required this.url, this.onTap});
  final String url;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        child: Container(
          height: 40,
          child: Image(image: AssetImage(url),)),
        backgroundColor: Colors.grey,
        maxRadius: 30,
      ),
    );
  }
}
