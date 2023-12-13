import 'package:cocktail/data/api/api_connect.dart';
import 'package:cocktail/data/models/nonalcoholicmodel.dart';
import 'package:get/get.dart';

class NonalcoholicController extends GetxController {
  final ApiConnect apis = Get.find<ApiConnect>();
  final nonalcoholiclist = List<NonAlcoholicModel>.empty(growable: true).obs;

  Future getNonAlcoholicData() async {
    final data = await apis.getNonAlcoholicList();
    nonalcoholiclist.value = data;
  }

  @override
  void onInit() {
    super.onInit();
    getNonAlcoholicData();
  }
}
