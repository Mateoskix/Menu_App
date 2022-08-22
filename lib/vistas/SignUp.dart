import 'package:app_menu/widgets/wdsFunc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: const Color(0xFFF2E8DF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(children: [
          Spacer(flex: 1,),
          const Image(
            image: AssetImage("assets/checklist.png"),
            width: 200,
            height: 200,
            alignment: Alignment.centerRight,
          ),
          Spacer(flex: 1,),
          Titulo("Sign Up"),
          Spacer(flex: 1,),
          SubTitulo("Sumate a la red del mejor Restaurante"),
          Spacer(flex: 1,),
          CampoLect("Usaurio", false),
          Spacer(flex: 1,),
          CampoLect("Nombre", false),
          Spacer(flex: 1,),
          CampoLect("Dirección", false),
          Spacer(flex: 1,),
          CampoLect("Celular", false),
          Spacer(flex: 1,),
          CampoLect("Email", false),
          Spacer(flex: 1,),
          CampoLect("Contraseña", true),
          Spacer(flex: 1,),
          CampoLect("Repetir Contraseña", true),
          Spacer(flex: 1,),
          LargeButton((){}, "Sign Up", Colors.pink.shade300, 210, 50),
          Spacer(flex: 2,)
        ]),
      ),
    ));
  }
}
