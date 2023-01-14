import 'package:flutter_pantalla_1/aplicacion/patron_decorador/i_servicio.dart';

abstract class Aspecto <Tservice> implements IService{
  IService decorado;

  Aspecto({required this.decorado});
}