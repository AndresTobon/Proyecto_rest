import 'package:flutter/material.dart';
import 'package:proyecto_restaurante/vistas/welcomePage.dart';
import 'package:proyecto_restaurante/widgets/wcWidgets.dart';

//Hecho por Andres Tobon Zuluaga - 370007
class Menu extends StatelessWidget {
  Menu({Key? key}) : super(key: key);

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
            color: const Color(0xFF7FFFD4),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              const Spacer(flex: 1),
              titleText("Menú Restaurante"),
              const Spacer(flex: 1),
              subTitleText(
                  "Aqui podras ver el menu con todas sus diversas opcione spara que escojas cual desees"),
              const Spacer(flex: 1),
              const Image(image: AssetImage("assets/logo.png")),
              const Spacer(flex: 2),
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
            ],
          ),
        ),
      ),
    );
  }
}
