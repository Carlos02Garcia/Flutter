import 'package:flutter/material.dart';
import 'app2.dart';

void main() {
  runApp(
    MyAppForm2(
      formKey: GlobalKey<FormState>(), // Debes proporcionar un GlobalKey<FormState>
      nombre: 'EjemploNombre', // Debes proporcionar un valor para nombre
      email: 'ejemplo@email.com', // Debes proporcionar un valor para email
      password: 'ejemploContraseña', // Debes proporcionar un valor para password
    ),
  );
}
