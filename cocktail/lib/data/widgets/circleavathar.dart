import 'package:cocktail/data/themes/Appcolors.dart';
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
        backgroundColor:Appcolor.lightGreen,
        maxRadius: 30,
        child: SizedBox(
          height: 28,
          child: Image(image: AssetImage(url),color:Appcolor.greenButton)),
      ),
    );
  }
}
