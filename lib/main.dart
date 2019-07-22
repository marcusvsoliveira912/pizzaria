import 'package:flutter/material.dart';

import 'package:pizzaria/pages/home.dart';
import 'package:pizzaria/pages/splash_screen.dart';

//Se quisermos, podemos criar rotas para facilitar a navegação entre páginas.
var rotas = <String, WidgetBuilder>{
  "/splash": (BuildContext context) => SplashScreenPage(),
  "/home": (BuildContext context) => HomePage(),
};

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 251, 140, 0),
        ),
      ),*/
      debugShowCheckedModeBanner: false,
      title: "Pizzaria Ma'que Pizza",
      home: SplashScreenPage(),
      routes: rotas,
    );
  }
}
