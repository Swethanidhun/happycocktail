import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
   const Textfield({super.key,required this.headline,required this.controller});
final String headline;
final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(headline,style: const TextStyle(fontWeight: FontWeight.w500)),
        ),
        const SizedBox(height: 10,),
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 6,
              offset: const Offset(0, 6),
            )
          ], borderRadius: BorderRadius.circular(35)),
          height: 60,
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide.none),
                filled: true,
                fillColor: Colors.white,),
          ),
        ),
      ],
    );
  }
}
