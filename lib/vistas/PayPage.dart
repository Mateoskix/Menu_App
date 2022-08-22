import 'package:app_menu/widgets/wdsFunc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PayPage extends StatelessWidget {
  PayPage({Key? key}) : super(key: key);

  double screenwidth = 0.0;
  double screenheight = 0.0;
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
            image: DecorationImage(image: AssetImage("assets/BackGround.jpg"), fit: BoxFit.cover)
          ),
          child: Column(
            children: [
              Spacer(flex: 1,),
              SizedBox(
              width: screenwidth*0.8,
              height: screenheight*0.7,
              child: DecoratedBox(decoration: BoxDecoration(
                color: Colors.green[50],
                borderRadius: BorderRadius.circular(10)
              )
              , child: Column(
                children: [
                  SizedBox(height: screenheight*0.02,),
                  Titulo("Resumen"),
                  Spacer(flex: 1,),
                  espaciopago(),
                  Spacer(flex: 1,),
                  espaciopago(),
                  Spacer(flex: 1,),
                  espaciopago(),
                  Spacer(flex: 1)
                ],
              ),),
            ),
            SizedBox(height: screenheight*0.02),
            LargeButton((){}, "Pagar", Colors.green.shade300, screenwidth*0.8, 40),
            Spacer(flex: 1,)
            ],
          ),
        ),
      )
    );
  }
}