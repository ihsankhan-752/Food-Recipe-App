import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/recipe_model.dart';

class RecipeServices {
  final List<RecipeModel> _recipeModel = [];

  List<RecipeModel> get recipeModel => _recipeModel;

  getAllRecipes() async {
    try {
      String url = 'https://dummyjson.com/recipes';
      var res = await http.get(Uri.parse(url));

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);
        if (data.containsKey('recipes')) {
          var recipeData = data['recipes'] as List;
          _recipeModel.clear();
          for (var recipe in recipeData) {
            _recipeModel.add(RecipeModel.fromMap(recipe));
          }
        } else {
          throw Exception("No Key Found");
        }
      } else {
        throw Exception("No Data Found to load");
      }
    } catch (e) {
      rethrow;
    }
  }
}
