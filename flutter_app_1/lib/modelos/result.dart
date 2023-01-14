class Result<T> {
  T? resultado;
  Exception? exception;

  Result({this.resultado, this.exception});

  T? getResultado() {
    return resultado;
  }

  Exception? getException() {
    return exception;
  }
}