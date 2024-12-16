import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals_app2/models/meal.dart';

//class name should be with "Notifier"
class FavouritesMealNotifier extends StateNotifier<List<Meal>>{

  //initialize the constructor
  FavouritesMealNotifier() : super([]);

  bool toggleMealFavouriteStatus(Meal meal){
    final mealIsFavourite = state.contains(meal);

    if(mealIsFavourite){
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    }else{
      state = [...state, meal]; //pull all the elements in a list and put them as individual elements
      return true;
    }
  }


}

final favouriteMealsProvider = StateNotifierProvider<FavouritesMealNotifier, List<Meal>>((ref){
  return FavouritesMealNotifier();
}); //used for data that can be changed