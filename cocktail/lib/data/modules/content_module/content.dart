import 'package:cocktail/data/modules/alcoholic_module/alcoholic_controller.dart';
import 'package:cocktail/data/themes/Appcolors.dart';
import 'package:cocktail/data/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ContentPage extends StatefulWidget {
  ContentPage({super.key, required this.index});
  final int index;
  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    Get.put(AlcoholicController());
    final alcoholiccontroller = Get.find<AlcoholicController>();

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage("assets/images/bg.png"))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 300,
                child: Card(
                  child: Image(
                    image: NetworkImage(alcoholiccontroller
                    .alcoholiclist[widget.index].strDrinkThumb
                    .toString()),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                alcoholiccontroller.alcoholiclist[widget.index].strDrink
                    .toString(),
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Total price"),
              Text(
                "\$750.00",
                style: TextStyle(
                    fontSize: 22,
                    color: Appcolor.greenButton,
                    fontWeight: FontWeight.w700),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Button(
                  text: "BUY NOW",
                  onPressed: () {},
                  width: 200,
                ),
              ),
              Text("")
            ],
          ),
        ),
      ),
    );
  }
}
