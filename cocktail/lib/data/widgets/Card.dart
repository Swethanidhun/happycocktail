import 'package:flutter/material.dart';

class Cardwidget extends StatelessWidget {
  Cardwidget({super.key, required this.name,required this.url});
  final String name;
final String url;
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
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: const Color.fromARGB(255, 1, 167, 131)
                              .withOpacity(0.2),
                          blurRadius: 15,
                          blurStyle: BlurStyle.outer)
                    ], borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                            width: 180,
                            child: Text(
                              name,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                              maxLines: 1,
                            )),
                        const Text(
                          "10",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 1, 110, 50)),
                        ),
                      ],
                    ),
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
                  child:  CircleAvatar(
                    radius: 65,
                    backgroundColor: Colors.white, 
                    backgroundImage:NetworkImage(url),// Change color as needed
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
