import 'package:app_menu/vistas/SignIn.dart';
import 'package:app_menu/vistas/SignUp.dart';
import 'package:app_menu/widgets/wdsFunc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color(0xFFF2E8DF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(children: [
          Spacer(flex: 1),
          Titulo("Bienvenida"),
          Spacer(
            flex: 2,
          ),
          SubTitulo(
              "Esta es una app de prueba para experimentar con ciertos widgets en Flutter. "
              "Está inspirada en el diseño de Yasir Ahmad Noori de Dribble"),
          Spacer(
            flex: 2,
          ),
          const Image(
            image: AssetImage("assets/logo.png"),
            height: 200,
            width: 200,
          ),
          Spacer(
            flex: 2,
          ),
          LargeButton(() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return SignIn();
              }),
            );
          }, "Sign In", Colors.transparent, 210, 50),
          SizedBox(
            height: 20,
          ),
          LargeButton(() {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const SignUp();
            }));
          }, "Sign Up", Color(0xFFF2D06B), 210, 50),
          Spacer(
            flex: 2,
          )
        ]),
      ),
    );
  }
}
