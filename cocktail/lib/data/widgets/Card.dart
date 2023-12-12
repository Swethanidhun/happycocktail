import 'package:flutter/material.dart';

class Cardwidget extends StatefulWidget {
  @override
  State<Cardwidget> createState() => _CardwidgetState();
}

class _CardwidgetState extends State<Cardwidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 250,
          width: double.infinity,
          child: Stack(
            children: [
              Center(
                child: Card(
                  color: Colors.white,
                  elevation: 1,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Nicoise Salad",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                        Text("10",style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 1, 110, 50)),),
                      ],
                    ),
                    height: 180,
                    width: 250,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: const Color.fromARGB(255, 1, 167, 131)
                              .withOpacity(0.2),
                          blurRadius: 15,
                          blurStyle: BlurStyle.outer)
                    ], borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 6, color: Colors.grey.withOpacity(0.3)),
                      ]),
                  child: const CircleAvatar(
                    radius: 65,
                    backgroundColor: Colors.white, // Change color as needed
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
