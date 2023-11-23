import 'package:flutter/material.dart';

class MyAppForm2 extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final String nombre;
  final String email;
  final String password;

  const MyAppForm2({
    Key? key,
    required this.formKey,
    required this.nombre,
    required this.email,
    required this.password,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulario',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Formulario 2'),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/imagenfondo.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'DIRECCION',
                      labelText: 'Direccion',
                      suffixIcon: Icon(Icons.verified_user),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Por favor, Ingrese su Direccion';
                      }
                      return null;
                    },
                  ),
                   Divider(
                  height: 28.0,
                ),
                     TextFormField(
                    decoration: InputDecoration(
                      hintText: 'NOMBRE',
                      labelText: 'Nombre',
                      suffixIcon: Icon(Icons.verified_user),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Por favor, Ingrese su nombre';
                      }
                      return null;
                    },
                  ),
                   Divider(
                  height: 20.0,
                ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'EMAIL',
                      labelText: 'Email',
                      suffixIcon: Icon(Icons.alternate_email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Por favor, Ingrese su Correo';
                      }
                      return null;
                    },
                  ),
                                  Divider(
                  height: 28.0,
                ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'CELULAR',
                      labelText: 'Celular',
                      suffixIcon: Icon(Icons.verified_user),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Por favor, Ingrese su Celular';
                      }
                      return null;
                    },
                  ),
                                  Divider(
                  height: 18.0,
                ),
                  TextFormField(
                  enableInteractiveSelection: false,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'PASSWORD',
                      labelText: 'Password',
                      suffixIcon: Icon(Icons.lock_outline),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Por favor, Ingrese su Contraseña';
                      }
                      return null;
                    },
                  ),
                                  Divider(
                  height: 18.0,
                ),
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState != null &&
                          formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Procesando información')),
                        );
                      }
                    },
                    child: Text('Enviar'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
