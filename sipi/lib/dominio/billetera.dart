class Billetera {
  double monto;

  Billetera(this.monto);

  void cargar(double cantidad) {
    // Implementación de cargar
    monto += cantidad;
  }

  void descargar(double cantidad) {
    // Implementación de descargar
    monto -= cantidad;
  }
}
