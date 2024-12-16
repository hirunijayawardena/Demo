import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app2/data/dummy_data.dart';

final mealsProvider = Provider((ref){ // this provider used for data that never changes
  return dummyMeals;
});