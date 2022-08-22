import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proyecto_restaurante/vistas/Menu.dart';
import 'package:proyecto_restaurante/vistas/Pedidos.dart';
import 'package:proyecto_restaurante/vistas/Usuarios.dart';
import 'package:proyecto_restaurante/widgets/wcWidgets.dart';
import 'package:proyecto_restaurante/vistas/Reservas.dart';

//Hecho por Andres Tobon Zuluaga - 370007
class WelcomePage extends StatelessWidget {
   WelcomePage({Key? key}) : super(key: key);

  double screenHeight = 0.0;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          width: 280,
          height: screenHeight* 0.9,
          decoration: BoxDecoration(
            color: const Color(0xFFF2E8DF),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              const Spacer(flex: 1),
              const Image(image: AssetImage("assets/logo2.png")),
              const Spacer(flex: 1),
              subTitleText(
                  "Aqui podras encontrar todas las opciones que te ofrecemos para facilitar tu sercivio"),
              const Spacer(flex: 1),
              
              const Spacer(),
              largeButton(() {
                //Aqui va nuestyra funcion
                
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return  Usuarios();
                    },
                  ),
                );
              }, const Color(0xFFFFC0CB), "Login"),
              const Spacer(flex: 1),
              largeButton(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return  Menu();
                    },
                  ),
                );
                //Aqui ira nuestra funcion
              }, const Color(0xFFF2D06B), "Menu"),
              Spacer(flex: 1),
              largeButton(() {
                //Aqui va nuestyra funcion
                
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return  Pedidos();
                    },
                  ),
                );
              }, const Color(0xFFFFC0CB), "Pedidos"),
              const Spacer(flex: 1),
              largeButton(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return  Reservas();
                    },
                  ),
                );
                //Aqui ira nuestra funcion
              }, const Color(0xFFF2D06B), "Reservas"),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}

