import 'package:flutter/material.dart';

class Cardwidget extends StatelessWidget {
  const Cardwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 1, 167, 131).withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
        borderRadius: BorderRadius.circular(35),
      ),
      height: 200,
      width: double.infinity,
      child: Stack(
        children: [
          // Card
          const Positioned.fill(
            child: Card(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("data",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                  Text("10",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color:Color.fromARGB(255, 1, 167, 131) ),)
                ],
              ),
              elevation: 5,
              color: Colors.white,
            ),
          ),
          // Circle
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: 130,
              height: 130,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white, // You can change the color as needed
              ),
            ),
          ),
        ],
      ),
    );
  }
}
