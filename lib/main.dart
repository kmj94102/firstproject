import 'package:firstproject/recipe.dart';
import 'package:firstproject/recipe_detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const RecipesApp());
}

class RecipesApp extends StatelessWidget {
  const RecipesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '데모',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AppBar 타이틀입니다.'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return RecipeDetail(recipe: recipeList[index],);
                }));
              },
              child: buildRecipeCard(recipeList[index]),
            );
          },
          itemCount: recipeList.length,
        )
        // Container(
        //   color: Colors.yellow,
        //   child: Text(recipe.label ?? "default"),
        // ),
        );
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 2.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset(recipe.imageUrl),
              const SizedBox(
                height: 12,
              ),
              Text(
                recipe.label ?? "no Data",
                style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Palatino'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
