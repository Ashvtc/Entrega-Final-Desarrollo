import 'package:flutter_pantalla_1/modelos/result.dart';

abstract class IService <T, Tservice>{
  Future<Result<T>> execute(Tservice s);
}