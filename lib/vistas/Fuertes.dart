import 'package:app_menu/widgets/wdsFunc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Fuertes extends StatelessWidget {
  Fuertes({Key? key}) : super(key: key);

  double screenheight = 0.0;
  double screenwidth = 0.0;
  @override
  Widget build(BuildContext context) {
    screenheight = MediaQuery.of(context).size.height;
    screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          width: screenwidth,
          height: screenheight,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Spacer(
                flex: 1,
              ),
              Titulo("Platos Fuertes"),
              Spacer(
                flex: 1,
              ),
              Container(
                width: screenwidth * 0.8,
                height: screenheight * 0.13,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green.shade200),
                child: Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    SizedBox(
                      width: screenwidth * 0.28,
                      height: screenheight * 0.11,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Color(0xffe9fce9),
                            borderRadius: BorderRadius.circular(15)),
                        child: Image.asset(
                          "assets/bandeja.png",
                        ),
                      ),
                    ),
                    Spacer(flex: 1),
                    SubTitulo("Bandeja Paisa con bebida "),
                    Spacer(
                      flex: 1,
                    )
                  ],
                ),
              ),
              SizedBox(height: screenheight*0.01),
              Row(
                children: [
                  Spacer(flex: 1),
                  Text(
                    "25.000\$",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(flex: 1),
                  LargeButton(
                      () {},
                      "Agregar al Carrito",
                      Colors.green.shade200,
                      (screenwidth * 0.35),
                      (screenheight * 0.03)),
                  Spacer(flex: 1,)
                ],
              ),
              Spacer(
                flex: 4,
              )
            ],
          ),
        ),
      ),
    );
  }
}
