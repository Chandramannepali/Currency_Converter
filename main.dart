// types of imports
// 1. package imports
//    - used to import packages from pub.dev
//    - example: import 'package:flutter/material.dart';
// 2. relative imports
//    - used to import files from the same project
//    - example: import 'package:currency_converter/pages/currency_converter_material_page.dart';
// 3. dart imports
//    - used to import dart libraries
//    - example: import 'dart:math';


import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';


//runApp is the entry point of the application
// It takes a widget as an argument and renders it on the screen.
// The widget is usually a MaterialApp or a CupertinoApp, which provides the basic structure of the app.
// The runApp function is called in the main function, which is the entry point of the application.

 void main() {
  runApp(const Myapp());

 }

//types of widgets
// 1. StatelessWidget
// 2. StatefulWidget
// StatelessWidget is immutable, meaning that its properties can't change - all values are final.
// StatefulWidget is mutable, meaning that its properties can change - values are not final.
// StatelessWidget is used when the widget does not depend on any state.
// StatefulWidget is used when the widget depends on some state that can change over time.
//super.key is used to pass the key to the parent class.
//build method is used to build the widget tree.
//widget tree is a tree of widgets that describes the UI of the application.
//1.material design(designed by google)
//2.cupertino design(designed by apple)
//materilapp is a widget that provides the basic structure of the app.
// It is used to create a Material Design app.
//materialapp provides features like navigation, theming, and localization.
// Scaffold is a widget that provides the basic structure of the app.
//scaffold provides features like app bar, drawer, bottom navigation bar, and floating action button.
// Text is a widget that displays a string of text.
// Text widget is used to display text on the screen.
//center is a widget that centers its child widget within itself.
//center needs a child widget to center it.
//column is a widget that displays its children in a vertical array.

 class Myapp extends StatelessWidget{
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      home: CurrencyConverterMaterialPage(),
  );
  }
 }
