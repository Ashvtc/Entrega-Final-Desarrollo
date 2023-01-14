import 'package:flutter_pantalla_1/aplicacion/patron_decorador/i_servicio.dart';

abstract class ServiceDecorator <Tservice> implements IService{
  IService decorado;

  ServiceDecorator({required this.decorado});
}