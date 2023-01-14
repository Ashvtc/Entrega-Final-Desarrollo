import 'package:flutter_pantalla_1/modelos/result.dart';

abstract class IService <Tservice>{
  Future<Result<T>> execute<T>(Tservice s);
}