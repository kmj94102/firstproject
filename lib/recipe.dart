class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;

  Recipe(this.label, this.imageUrl, this.servings, this.ingredients);
}

class Ingredient {
  String name;
  String measure;
  double quantity;

  Ingredient(this.quantity, this.name, this.measure);
}

List<Recipe> recipeList = [
  Recipe("Spaghetti and Meatballs", "assets/image01.png", 4, [
    Ingredient(1, "box", "Spaghetti"),
    Ingredient(4, "", "Frozen Meatballs"),
    Ingredient(0.5, "jar", "sauce")
  ]),
  Recipe("Hawaiian Pizza", "assets/image02.png", 4, [
    Ingredient(1, "item", "pizza"),
    Ingredient(1, "cup", "pineapple"),
    Ingredient(8, "oz", "ham")
  ]),
  Recipe("Hawaiian Pizza", "assets/image03.png", 4, [
    Ingredient(1, "item", "pizza"),
    Ingredient(1, "cup", "pineapple"),
    Ingredient(1, "cup", "pineapple"),
    Ingredient(1, "cup", "pineapple"),
    Ingredient(1, "cup", "pineapple"),
    Ingredient(1, "cup", "pineapple"),
    Ingredient(8, "oz", "ham"),
    Ingredient(1, "item", "pizza"),
    Ingredient(1, "cup", "pineapple"),
    Ingredient(1, "cup", "pineapple"),
    Ingredient(1, "cup", "pineapple"),
    Ingredient(1, "cup", "pineapple"),
    Ingredient(1, "cup", "pineapple"),
    Ingredient(8, "oz", "ham")
  ]),
  Recipe("Hawaiian Pizza", "assets/image04.jpeg", 4, [
    Ingredient(1, "item", "pizza"),
  ])
];