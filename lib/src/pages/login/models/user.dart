import 'dart:convert';

User usersFromJson(String str) => User.fromJson(json.decode(str));

String usersToJson(User data) => json.encode(data.toJson());

class User {
    String? id;
    String? nombre;
    String? apellido;
    String? correo;
    String? telefono;
    String? nombrevereda;
    String? password;

    User({
        required this.id,
        required this.nombre,
        required this.apellido,
        required this.correo,
        required this.telefono,
        required this.nombrevereda,
        required this.password,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        nombre: json["nombre"],
        apellido: json["apellido"],
        correo: json["correo"],
        telefono: json["telefono"],
        nombrevereda: json["nombrevereda"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "apellido": apellido,
        "correo": correo,
        "telefono": telefono,
        "nombrevereda": nombrevereda,
        "password": password,
    };
}
