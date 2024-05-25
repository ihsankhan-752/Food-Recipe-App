class RecipeModel {
  final int id;
  final String name;
  final List<String> ingredients;
  final List<String> instructions;
  final double prepTimeMinutes;
  final double cookTimeMinutes;
  final double servings;
  final String difficulty;
  final String cuisine;
  final double caloriesPerServing;
  final List<String> tags;
  final int userId;
  final String image;
  final double rating;
  final int reviewCount;
  final List<String> mealType;

  const RecipeModel({
    required this.id,
    required this.name,
    required this.ingredients,
    required this.instructions,
    required this.prepTimeMinutes,
    required this.cookTimeMinutes,
    required this.servings,
    required this.difficulty,
    required this.cuisine,
    required this.caloriesPerServing,
    required this.tags,
    required this.userId,
    required this.image,
    required this.rating,
    required this.reviewCount,
    required this.mealType,
  });

  factory RecipeModel.fromMap(Map<String, dynamic> map) {
    return RecipeModel(
      id: map['id'] as int,
      name: map['name'] as String,
      ingredients: List<String>.from(map['ingredients']),
      instructions: List<String>.from(map['instructions']),
      prepTimeMinutes: (map['prepTimeMinutes'] as num).toDouble(),
      cookTimeMinutes: (map['cookTimeMinutes'] as num).toDouble(),
      servings: (map['servings'] as num).toDouble(),
      difficulty: map['difficulty'] as String,
      cuisine: map['cuisine'] as String,
      caloriesPerServing: (map['caloriesPerServing'] as num).toDouble(),
      tags: List<String>.from(map['tags']),
      userId: map['userId'] as int,
      image: map['image'] as String,
      rating: (map['rating'] as num).toDouble(),
      reviewCount: map['reviewCount'] as int,
      mealType: List<String>.from(map['mealType']),
    );
  }
}
