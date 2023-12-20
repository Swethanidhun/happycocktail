import 'package:cocktail/data/modules/non_alcoholic_module/non_alcoholic_controller.dart';
import 'package:cocktail/data/widgets/categorycard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NonAlcoholicPage extends StatefulWidget {
  const NonAlcoholicPage({super.key});

  @override
  State<NonAlcoholicPage> createState() => _NonAlcoholicPageState();
}

class _NonAlcoholicPageState extends State<NonAlcoholicPage> {
  @override
  Widget build(BuildContext context) {
    Get.put(NonalcoholicController());
    final nonalcoholiccontroller = Get.find<NonalcoholicController>();

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          children: [
            const Center(child: Text("Non-Alcoholic",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
            const SizedBox(
              height: 30,
            ),
            Obx(() => ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: nonalcoholiccontroller.nonalcoholiclist.length,
                  itemBuilder: (context, index) {
                    return Categorycard(index: index,
                      name:
                          "${nonalcoholiccontroller.nonalcoholiclist[index].strDrink}",
                      url: nonalcoholiccontroller.nonalcoholiclist[index].strDrinkThumb.toString(),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
