import 'package:app_menu/vistas/HomePage.dart';
import 'package:app_menu/widgets/wdsFunc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);
  double screenwidth = 0.0;
  double screenheight = 0.0;
  @override
  Widget build(BuildContext context) {
    screenwidth = MediaQuery.of(context).size.width;
    screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          width: screenwidth,
          height: screenheight,
          decoration: BoxDecoration(
            color: const Color(0xFFF2E8DF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(children: [
            Spacer(flex: 1),
            const Image(
                image: AssetImage("assets/plug.png"), height: 200, width: 200),
            Spacer(flex: 1),
            Titulo("Sign In"),
            Spacer(flex: 1),
            SubTitulo("Conectate a una maravillosa comunidad y mucho más"),
            Spacer(flex: 2),
            const SizedBox(
              width: 210,
              child: TextField(
                decoration: InputDecoration(hintText: "Usuario"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 210,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(hintText: "Contraseña"),
              ),
            ),
            Spacer(flex: 1),
            LargeButton(() {}, "Sign In", Colors.pink.shade300, 210, 50),
            SizedBox(
              height: (screenheight * 0.01),
            ),
            LargeButton(() {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomePage();
              }));
            }, "Ingresar como invitado", Colors.pink.shade100, 210, 50),
            Spacer(flex: 3),
            SubTitulo("¿No tienes cuenta? has el Sign Up"),
            Spacer(flex: 1)
          ]),
        ),
      ),
    );
  }
}
