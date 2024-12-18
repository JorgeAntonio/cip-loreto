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

  Map<String, dynamic> toJson() {
    return {
      "item": item,
      "apellido_paterno": apellidoPaterno,
      "apellido_materno": apellidoMaterno,
      "nombres": nombres,
      "colegiatura": colegiatura,
      "tipo_documento": tipoDocumento,
      "numero_documento": numeroDocumento,
      "codigo_capitulo": codigoCapitulo,
      "capitulo": capitulo,
      "correo": correo,
      "codigo_pais": codigoPais,
      "celular": celular,
      "tipo_colegiado": tipoColegiado,
      "consejo_departamental": consejoDepartamental,
      "pagos": pagos?.map(
        (mes, data) => MapEntry(
          mes,
          data.toJson(),
        ),
      ),
    };
  }

  Colegiado copyWith({
    Map<String, Pago>? pagos,
  }) {
    return Colegiado(
      item: item,
      apellidoPaterno: apellidoPaterno,
      apellidoMaterno: apellidoMaterno,
      nombres: nombres,
      colegiatura: colegiatura,
      tipoDocumento: tipoDocumento,
      numeroDocumento: numeroDocumento,
      codigoCapitulo: codigoCapitulo,
      capitulo: capitulo,
      correo: correo,
      codigoPais: codigoPais,
      tipoColegiado: tipoColegiado,
      consejoDepartamental: consejoDepartamental,
      pagos: pagos ?? this.pagos,
    );
  }
}

class Pago {
  final double monto;
  final DateTime fechaPago;
  final String? estado;

  Pago(
    this.estado, {
    required this.monto,
    required this.fechaPago,
  });

  factory Pago.fromJson(Map<String, dynamic> json) => Pago(
        json['estado'],
        monto: json['monto'].toDouble(),
        fechaPago: DateTime.parse(json['fecha_pago']),
      );

  Map<String, dynamic> toJson() => {
        "monto": monto,
        "fecha_pago": fechaPago.toIso8601String(),
      };

  /// Método copyWith para crear una copia modificada de Pago
  Pago copyWith({
    double? monto,
    DateTime? fechaPago,
    String? estado,
  }) {
    return Pago(
      estado ?? this.estado,
      monto: monto ?? this.monto,
      fechaPago: fechaPago ?? this.fechaPago,
    );
  }
}
