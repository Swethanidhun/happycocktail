import 'dart:convert';

import 'package:cocktail/data/models/cocktaildetailsbyidmodel.dart';
import 'package:cocktail/data/models/ordinarydrinkmodel.dart';
import 'package:http/http.dart' as http;

class ApiConnect {
  ApiConnect();
  Future<List<CocktailDetailsByIdModel>> getCocktailById()async{
    try {
      var response = await http.get(Uri.parse('https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail'));
      if (response.statusCode == 200) {
        var result = json.decode(response.body);
        return CocktailDetailsByIdModel.listFromJson(result['drinks']);
      }
      else{
        throw Exception('Failed to load data');
      }
    } catch (e) {
       print('Error: $e');
       rethrow;
    }
  }


    Future<List<OrdinaryDrinkModel>> getOrdinaryDrinks()async{
    try {
      var response = await http.get(Uri.parse('https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Ordinary_Drink'));
      if (response.statusCode == 200) {
        var result = json.decode(response.body);
        return OrdinaryDrinkModel.listFromJson(result['drinks']);
      }
      else{
        throw Exception('Failed to load data');
      }
    } catch (e) {
       print('Error: $e');
       rethrow;
    }
  }

}