class ParametroAdaptadorIterable <Tadaptador, Titerable>{
  Tadaptador adaptador;
  Titerable iterable;

  ParametroAdaptadorIterable ({required this.adaptador, required this.iterable});

  Tadaptador getAdaptador() {
    return adaptador;
  }

  Titerable getIterable() {
    return iterable;
  }
}