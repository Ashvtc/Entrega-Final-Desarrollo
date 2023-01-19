import 'package:flutter_app_web/src/appweb.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_strategy/url_strategy.dart';


/*void deletedata(String id) async {
  final response = await apiService.deletedata(id)
    if (response == ){
      setState((){
        getData();
      });
    }else{
      print("No se puede eliminar este elemento")
    }
}
*/


void main() {
  setPathUrlStrategy();
  runApp(
    ProviderScope(
      child: MaterialApp(
        title: "Corsi",
        home: AppWeb(),
      ),
    ),
  );
}