import 'package:cip_loreto/features/home/data/post_model.dart';

class Eventos {
  final List<Publicacion> publicaciones;

  Eventos({required this.publicaciones});

  factory Eventos.fromJson(Map<String, dynamic> json) {
    var list = json['publicaciones'] as List;
    List<Publicacion> publicacionesList =
        list.map((i) => Publicacion.fromJson(i)).toList();

    return Eventos(publicaciones: publicacionesList);
  }

  Map<String, dynamic> toJson() {
    return {
      'publicaciones': publicaciones.map((e) => e.toJson()).toList(),
    };
  }
}
