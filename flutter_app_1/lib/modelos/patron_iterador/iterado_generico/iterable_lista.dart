import '../i_iterable.dart';
import 'iterador_lista.dart';

class IterableLista<T_iterado> implements Iterable<T_iterado> {
  List<T_iterado> lista = [];

  // IterableLista({required this.lista});

  @override
  IteradorLista<T_iterado> crearIterador() {
    return IteradorLista<T_iterado>(lista: this);
  }

  void add(T_iterado elemento) {
    lista.add(elemento);
  }

  int cantidadElementos() {
    return lista.length;
  }
}
