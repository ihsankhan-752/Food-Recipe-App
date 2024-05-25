import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_recipe_app/model/recipe_model.dart';

class RecipeDetailScreen extends StatelessWidget {
  final RecipeModel recipeModel;
  const RecipeDetailScreen({super.key, required this.recipeModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text(
          recipeModel.name,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height * 0.3,
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: NetworkImage(recipeModel.image), fit: BoxFit.cover),
                ),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10, right: 10),
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.7),
                    ),
                    child: Center(
                      child: Text(
                        "⭐  ${recipeModel.rating}  (${recipeModel.reviewCount})",
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(
                    height: 30,
                    width: 35,
                    child: Image.asset('images/cook.png'),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "${recipeModel.cookTimeMinutes} Min",
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 30,
                    width: 35,
                    child: Image.asset('images/prep.png', fit: BoxFit.cover),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "${recipeModel.prepTimeMinutes} Min",
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Meal Type",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: recipeModel.mealType.map((e) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.teal.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(05),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          e,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList()),
              ),
              const SizedBox(height: 20),
              const Text(
                "Tags",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: recipeModel.tags.map((e) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.teal.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(05),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          e,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList()),
              ),
              const SizedBox(height: 20),
              Text(
                "Ingredients ${recipeModel.ingredients.length}",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 10),
              for (int i = 0; i < recipeModel.ingredients.length; i++) ...[
                Text(
                  "${i + 1}. ${recipeModel.ingredients[i]}",
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
              const SizedBox(height: 20),
              Text(
                "Instructions ${recipeModel.instructions.length}",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 10),
              for (int i = 0; i < recipeModel.instructions.length; i++) ...[
                Text(
                  "${i + 1}. ${recipeModel.instructions[i]}",
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
