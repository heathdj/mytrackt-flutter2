import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytrackt/categories_screen.dart';
import 'package:mytrackt/category_checklists_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyTrackt',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.purpleAccent,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1:
                  GoogleFonts.raleway(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyText2:
                  GoogleFonts.roboto(color: Color.fromRGBO(20, 51, 51, 1)),
              headline6: GoogleFonts.robotoCondensed(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
      ),
      home: CategoriesScreen(),
      routes: {
        '/categories': (ctx) => CategoryChecklistsScreen(),
      },
    );
  }
}
