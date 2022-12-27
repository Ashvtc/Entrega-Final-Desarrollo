import 'package:flutter/material.dart';
import 'package:flutter_pantalla_1/vistas/pantallas/pantalla_cursos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Corsi',
        home: const PantallaCursos(),
        theme: ThemeData(
          primaryColor: const Color(0xFF2196F3),
          // accentColor: const Color(0XFF030047),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: const Color(0XFF030047)),
          highlightColor: const Color(0XFFB7B7D2),
          textTheme: const TextTheme(
            headline1: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFFFFFF),
            ),
            headline2: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2196F3),
            ),
            headline3: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF589FDE),
            ),
            headline4: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            headline5: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFFFFFF),
            ),
            headline6: TextStyle(
              fontSize: 18.0,
              color: Color(0XFFB7B7D2),
            ),
            bodyText1: TextStyle(
              fontSize: 20.0,
              color: Color(0XFFB7B7D2),
            ),
            bodyText2: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Color(0xFF2196F3),
            ),
            subtitle1: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            subtitle2: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ));
  }
}
