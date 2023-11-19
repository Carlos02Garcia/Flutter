import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/imagenfondo.png') 
          ),
        ),
       
      child:ListView(
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
                'Ejemplo n2',
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
                  _nombre = valor;
                  print('El nombre es $_nombre');
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
                  _nombre = valor;
                  print('El nombre es $_nombre');
                },
              ),
              Divider(
                height: 15.0,
              ),
              SizedBox(
                width: double.infinity,
                child: FloatingActionButton(
                  hoverColor: Colors.red,
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 30.0,
                        fontFamily: 'KdamThmorPro-Regular'
                  ),
                  ),
                  backgroundColor: Colors.red,
                  onPressed: () {
                    print('Diste Un Toque');
                  },
                ),
              ),
            ],
          )
        ],
      ),
    ),
    );
  }
}
