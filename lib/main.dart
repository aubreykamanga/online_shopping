import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:online_shopping/constants.dart';
import 'package:online_shopping/screens/product/products_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Shopping App',
      theme: ThemeData(
        // setting poppins as default fonts
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(secondary: kPrimaryColor),
      ),
      home: const ProductsScreen(),
    );
  }
}
