class Result<T> {
  T? valor;
  Exception? exception;

  Result({this.valor, this.exception});

  T? getResultado() {
    return valor;
  }

  Exception? getException() {
    return exception;
  }

  bool satisfactorio() {
    return valor!=null? true: false;
  }
}