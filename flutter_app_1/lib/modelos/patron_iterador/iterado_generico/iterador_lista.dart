import 'iterable_lista.dart';
import '../i_iterador.dart';

class IteradorLista<T_iterado> implements Iterador<T_iterado> {
  IterableLista<T_iterado> lista;
  int posicionActual = -1;

  IteradorLista({required this.lista});

  @override
  bool hasMore() {
    if ((posicionActual + 1) < cantidadElementos()) {
      return true;
    }
    return false;
  }

  @override
  T_iterado getNext() {
    posicionActual += 1;
    return lista.lista[posicionActual];
  }

  T_iterado? getElementoPorIndex(int index) {
    if ((index >= 0) && (index < cantidadElementos())) {
      return lista.lista[index];
    }
    return null;
  }

  void resetPosicionInicial() {
    posicionActual = -1;
  }

  int cantidadElementos() {
    return lista.cantidadElementos();
  }
}
