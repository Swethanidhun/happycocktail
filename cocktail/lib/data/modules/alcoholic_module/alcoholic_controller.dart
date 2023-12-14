import 'package:cocktail/data/api/api_connect.dart';
import 'package:cocktail/data/models/alcoholicmodel.dart';
import 'package:cocktail/data/models/detailsmodel.dart';
import 'package:get/get.dart';

class AlcoholicController extends GetxController {
  final ApiConnect apis = Get.find<ApiConnect>();
  final alcoholiclist = List<AlcoholicModel>.empty(growable: true).obs;

  Future getAlcoholicData() async {
    final data = await apis.getAlcoholicList();
    alcoholiclist.value = data;
  }

    final Detailslist = List<Detailsmodel>.empty(growable: true).obs;

  Future getDetails(int index) async {
    final id = alcoholiclist[index].idDrink;
    final data = await apis.getDetails(id!);
    Detailslist.value = data;
  }



  @override
  void onInit() {
    super.onInit();
    getAlcoholicData();
    getDetails(0);
  }
}
