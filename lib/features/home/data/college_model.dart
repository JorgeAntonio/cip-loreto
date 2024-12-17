class Colegiado {
  final int item;
  final String apellidoPaterno;
  final String apellidoMaterno;
  final String nombres;
  final int colegiatura;
  final int tipoDocumento;
  final String numeroDocumento;
  final int codigoCapitulo;
  final String capitulo;
  final String correo;
  final int codigoPais;
  final String? celular;
  final String tipoColegiado;
  final String consejoDepartamental;
  final Map<String, Pago>? pagos;

  Colegiado({
    required this.item,
    required this.apellidoPaterno,
    required this.apellidoMaterno,
    required this.nombres,
    required this.colegiatura,
    required this.tipoDocumento,
    required this.numeroDocumento,
    required this.codigoCapitulo,
    required this.capitulo,
    required this.correo,
    required this.codigoPais,
    this.celular,
    required this.tipoColegiado,
    required this.consejoDepartamental,
    this.pagos,
  });

  factory Colegiado.fromJson(Map<String, dynamic> json) {
    return Colegiado(
      item: json['item'],
      apellidoPaterno: json['apellido_paterno'],
      apellidoMaterno: json['apellido_materno'],
      nombres: json['nombres'],
      colegiatura: json['colegiatura'],
      tipoDocumento: json['tipo_documento'],
      numeroDocumento: json['numero_documento'],
      codigoCapitulo: json['codigo_capitulo'],
      capitulo: json['capitulo'],
      correo: json['correo'],
      codigoPais: json['codigo_pais'],
      celular: json['celular']?.toString(),
      tipoColegiado: json['tipo_colegiado'],
      consejoDepartamental: json['consejo_departamental'],
      pagos: json['pagos'] != null
          ? (json['pagos'] as Map<String, dynamic>).map(
              (mes, data) => MapEntry(
                mes,
                Pago.fromJson(data),
              ),
            )
          : null,
    );
  }
}

class Pago {
  final double monto; // Cambiado a double para reflejar el JSON.
  final DateTime fechaPago;

  Pago({
    required this.monto,
    required this.fechaPago,
  });

  factory Pago.fromJson(Map<String, dynamic> json) => Pago(
        monto: json['monto'].toDouble(), // Aseguramos que sea double.
        fechaPago: DateTime.parse(json['fecha_pago']),
      );

  Map<String, dynamic> toJson() => {
        "monto": monto,
        "fecha_pago": fechaPago.toIso8601String(),
      };
}
