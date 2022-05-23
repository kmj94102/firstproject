import 'package:firstproject/recipe.dart';
import 'package:flutter/material.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.recipe.label)),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(widget.recipe.imageUrl),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.recipe.label,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Palatine"),
            ),
            Expanded(
                child: ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              itemBuilder: (context, index) {
                Ingredient contents = widget.recipe.ingredients[index];
                return Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Text(
                    '${contents.quantity * _sliderVal} ${contents.measure} ${contents.name}',
                    style: const TextStyle(
                        fontSize: 14, color: Color.fromARGB(255, 66, 62, 62), fontWeight: FontWeight.w400),
                  ),
                );
              },
              itemCount: widget.recipe.ingredients.length,
            )),
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              value: _sliderVal.toDouble(),
              onChanged: (double newValue) {
                setState(() {
                  _sliderVal = newValue.toInt();
                });
              },
              label: "${_sliderVal * widget.recipe.servings} servings",
            )
          ],
        ),
      ),
    );
  }
}
