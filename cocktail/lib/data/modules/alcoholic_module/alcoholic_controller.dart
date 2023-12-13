import 'package:cocktail/data/api/api_connect.dart';
import 'package:cocktail/data/models/alcoholicmodel.dart';
import 'package:get/get.dart';

class AlcoholicController extends GetxController {
  final ApiConnect apis = Get.find<ApiConnect>();
  final alcoholiclist = List<AlcoholicModel>.empty(growable: true).obs;

  Future getAlcoholicData() async {
    final data = await apis.getAlcoholicList();
    alcoholiclist.value = data;
  }
 

  @override
  void onInit() {
    super.onInit();
    getAlcoholicData();
  }
}
