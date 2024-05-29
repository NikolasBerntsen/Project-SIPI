abstract class Pago {
  int idPago;
  double monto;
  DateTime fechaPago;

  Pago({
    required this.idPago,
    required this.monto,
    required this.fechaPago,
  });

  void realizarPago();
  void cancelarPago();
}
