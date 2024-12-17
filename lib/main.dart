import 'package:flutter/material.dart';
import 'screens/tabs_screen.dart';
import 'package:meals/screens/meal_detail_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'utils/app_routes.dart';
import 'screens/setting_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.pink[400],
        focusColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: const Color.fromARGB(255, 255, 255, 242),
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 242),
        textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => const TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => const CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => const MealDetailScreen(),
        AppRoutes.SETTINGS: (ctx) => const SettingScreen(),
      },
    );
  }
}
