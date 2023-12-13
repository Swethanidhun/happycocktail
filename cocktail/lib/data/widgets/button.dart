import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({super.key, required this.text,required this.onPressed,required this.width});
  final String text;
  final  void Function()? onPressed;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: const Color.fromARGB(255, 1, 167, 131).withOpacity(0.3),
          spreadRadius: 2,
          blurRadius: 6,
          offset: const Offset(0, 6),
        )
      ], borderRadius: BorderRadius.circular(35)),
      height: 45,
      width: width,
      child: ElevatedButton(
        style: const ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll(Color.fromARGB(255, 245, 206, 88))),
        onPressed:onPressed,
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
