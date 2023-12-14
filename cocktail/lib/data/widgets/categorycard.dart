import 'package:cocktail/data/modules/alcoholic_module/alcoholic_controller.dart';
import 'package:cocktail/data/modules/content_module/content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Categorycard extends StatelessWidget {
  Categorycard({super.key, required this.name,required this.url,required this.index});
  final String name;
final String url;
final int index;
  @override
  Widget build(BuildContext context) {
    // Get.put(AlcoholicController());
    // final alcoholiccontroller = Get.find<AlcoholicController>();

    return Column(
      children: [
        SizedBox(
          height: 150,
          width: double.infinity,
          child: Stack(
            children: [
              Center(
                child: GestureDetector(
                  onTap: () {
                    // alcoholiccontroller.getDetails(index);
                    Get.to(() => ContentPage(index: index,));
                  },
                  child: Card(
                    color: Colors.white,
                    elevation: 1,
                    child: Container(
                      height: 140,
                      width: 280,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: const Color.fromARGB(255, 1, 167, 131)
                                .withOpacity(0.2),
                            blurRadius: 15,
                            blurStyle: BlurStyle.outer)
                      ], borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30,top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 150,
                                child: Text(
                                  name,
                                  style: const TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.w600),
                                  maxLines: 2,
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
                ),
              ),
              Positioned(
                top: 20,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 6, color: Colors.grey.withOpacity(0.3)),
                      ]),
                  child:  CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.white, 
                    backgroundImage:NetworkImage(url),
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
