import 'package:cocktail/data/modules/alcoholic_module/alcoholic_controller.dart';
import 'package:cocktail/data/widgets/categorycard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlcoholicPage extends StatefulWidget {
  const AlcoholicPage({super.key});

  @override
  State<AlcoholicPage> createState() => _AlcoholicPageState();
}

class _AlcoholicPageState extends State<AlcoholicPage> {
  @override
  Widget build(BuildContext context) {
    Get.put(AlcoholicController());
    final alcoholiccontroller = Get.find<AlcoholicController>();

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          children: [
            const Center(child: Text("Alcoholic",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
            const SizedBox(
              height: 30,
            ),
            Obx(() => ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: alcoholiccontroller.alcoholiclist.length,
                  itemBuilder: (context, index) {
                    return Categorycard(index: index,
                      name:
                          "${alcoholiccontroller.alcoholiclist[index].strDrink}",
                      url: alcoholiccontroller.alcoholiclist[index].strDrinkThumb.toString(),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
