class Publicacion {
  final int id;
  final String titulo;
  final String fecha;
  final String contenido;
  final String imagen;
  final String enlace;

  Publicacion({
    required this.id,
    required this.titulo,
    required this.fecha,
    required this.contenido,
    required this.imagen,
    required this.enlace,
  });

  factory Publicacion.fromJson(Map<String, dynamic> json) {
    return Publicacion(
      id: json['id'],
      titulo: json['titulo'],
      fecha: json['fecha'],
      contenido: json['contenido'],
      imagen: json['imagen'],
      enlace: json['enlace'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'titulo': titulo,
      'fecha': fecha,
      'contenido': contenido,
      'imagen': imagen,
      'enlace': enlace,
    };
  }
}
