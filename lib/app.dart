import 'package:flutter/material.dart';
import 'app2.dart';

class MyAppForm extends StatefulWidget {
  const MyAppForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppFormState createState() => _MyAppFormState();
}

class _MyAppFormState extends State<MyAppForm> {
  late String _nombre;
  late String _email;
  late String _password;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/imagenfondo.png')),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('images/imagen.png'),
                ),
                Text(
                  'WELCOME TO FAST FOOD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'DancingScript-VariableFont_wght',
                      fontSize: 40.0),
                ),
                Text(
                  'Ejemplo n1',
                  style: TextStyle(
                      fontFamily: 'DancingScript-VariableFont_wght',
                      fontSize: 20.0),
                ),
                SizedBox(
                  width: 160.0,
                  height: 15.0,
                  child: Divider(color: Colors.blueGrey[600]),
                ),
                TextField(
                  enableInteractiveSelection: false,
                  autofocus: true,
                  textCapitalization: TextCapitalization.characters,
                  decoration: InputDecoration(
                      hintText: 'USER-NAME',
                      labelText: 'User name',
                      suffixIcon: Icon(Icons.verified_user),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  onSubmitted: (valor) {
                    _nombre = valor;
                    print('El nombre es $_nombre');
                  },
                ),
                Divider(
                  height: 18.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'EMAIL',
                      labelText: 'Email',
                      suffixIcon: Icon(Icons.alternate_email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  onSubmitted: (valor) {
                    _email = valor;
                    print('El correo es $_email');
                  },
                ),
                Divider(
                  height: 15.0,
                ),
                TextField(
                  enableInteractiveSelection: false,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'PASSWORD',
                      labelText: 'Password',
                      suffixIcon: Icon(Icons.lock_outline),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  onSubmitted: (valor) {
                    _password = valor;
                    print('La contraseña es $_password');
                  },
                ),
                Divider(
                  height: 15.0,
                ),
                Container(
  width: 400, // Ajusta el ancho según tus preferencias
  height: 50.0, // Ajusta la altura según tus preferencias
  child: FloatingActionButton(
    hoverColor: Colors.red,
    onPressed: () {
      // Asegúrate de que _nombre, _email, y _password estén inicializados
      if (_nombre != null && _email != null && _password != null) {
        print('Diste Un Toque: $_nombre');
      } else {
        print('Por favor, ingrese todos los campos.');
      }
    },
    child: Text(
      'LOGIN',
      style: TextStyle(
        color: Colors.white,
        fontSize: 30.0,
        fontFamily: 'KdamThmorPro-Regular',
      ),
    ),
    backgroundColor: Colors.red,
  ),
),
Container(
  width: 400,
  height: 50.0,
  child:InkWell(
        onTap:() {
          // Asegúrate de que _nombre, _email, y _password estén inicializados
          if (_nombre != null && _email != null && _password != null) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyAppForm2(
                  formKey: _formKey,
                  nombre: _nombre,
                  email: _email,
                  password: _password,
                ),
              ),
            );
          } else {
            print('Por favor, ingrese todos los campos.');
          }
        },
      
        child: Text(
          textAlign: TextAlign.center,
          'No tienes Cuenta?',
          style: TextStyle(
            color: Colors.red,
            fontSize: 18.0,
          ),
        ),
      ),
)
// ... (resto de tu código)
              ],
            )
          ],
        ),
      ),
    );
  }
}
