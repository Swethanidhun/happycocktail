
import 'package:get/get.dart';

import '../../api/api_connect.dart';
import '../../models/cocktaildetailsbyidmodel.dart';
import '../../models/ordinarydrinkmodel.dart';

class HomeController extends GetxController {
  final ApiConnect apis = Get.find<ApiConnect>();
  final cocktailbyidmodel = CocktailDetailsByIdModel().obs;
    final ordinarydrink = OrdinaryDrinkModel().obs;

  
  final cocktaillist = List<CocktailDetailsByIdModel>.empty(growable: true).obs;
    final ordinartdrinklist = List<OrdinaryDrinkModel>.empty(growable: true).obs;


  Future getCocktailByid() async {
    final data = await apis.getCocktailById();
    cocktaillist.value = data;
  }

    Future getOrdinaryDrink() async {
    final data = await apis.getOrdinaryDrinks();
    ordinartdrinklist.value = data;
  }

@override
  void onInit() {
    super.onInit();
    getCocktailByid();
    getOrdinaryDrink();

  }
}
