import 'package:cocktail/data/api/api_connect.dart';
import 'package:cocktail/data/models/cocktaildetailsbyidmodel.dart';
import 'package:cocktail/data/models/ordinarydrinkmodel.dart';
import 'package:get/get.dart';

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
    // TODO: implement onInit
    super.onInit();
    getCocktailByid();
    getOrdinaryDrink();

  }
  @override
  void onReady() {
    super.onReady();
  }
}
