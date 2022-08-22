import 'package:flutter/material.dart';
import 'package:proyecto_restaurante/vistas/welcomePage.dart';
import 'package:proyecto_restaurante/widgets/wcWidgets.dart';
//Hecho por Andres Tobon Zuluaga - 370007
class Usuarios extends StatelessWidget {
   Usuarios({Key? key}) : super(key: key);

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
            color: const Color(0xFFE6E6FA),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              const Image(image: AssetImage("assets/logo2.png")),
              const Spacer(flex: 3),
              titleText("Entra a tu usuario"),
              const SizedBox(height: 8),
              subTitleText("Conectate para acumular puntos con nosotros"),
              const Spacer(),
              const SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "User",
                  ),
                ),
              ),
                const SizedBox(
                width: 180,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                ),
              ),
              Spacer(flex: 1),
              //TextField(),Spacer(),
              largeButton(() {}, Color(0xFF41F2C0), "Ingresar"),
              Spacer(flex: 2),
              largeButton(() {
               Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return  WelcomePage();
                  },
                ),
              );
              //Aqui ira nuestra funcion
            }, const Color(0xFFF2D06B), "Regresar"),
            Spacer(flex: 2),

            subTitleText("Creado para la clase de Ing de Software 2022-2"),
            Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}