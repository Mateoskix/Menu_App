import 'package:app_menu/vistas/Fuertes.dart';
import 'package:app_menu/vistas/PayPage.dart';
import 'package:app_menu/vistas/Reserva.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/wdsFunc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double screenwidth = 0.0;
  double screenheight = 0.0;
  final estados = [
    Home(),
    PayPage()
  ];
  int index = 0;
  
  @override
  Widget build(BuildContext context) {
    
    screenheight = MediaQuery.of(context).size.height;
    screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: estados[index],
      bottomNavigationBar:
      NavigationBarTheme(
        data: NavigationBarThemeData(indicatorColor: Colors.green.shade200),
        child: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: "Inicio", selectedIcon: Icon(Icons.home),),
          NavigationDestination(icon: Icon(Icons.shopping_cart_outlined), label: "Carrito", selectedIcon: Icon(Icons.shopping_cart),)
          ],
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() {
            this.index = index;
          }),
          backgroundColor: Colors.white,
          height: screenheight*0.07,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          animationDuration: Duration(seconds: 1),
          ),)
      
    );
  }
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

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
            image: DecorationImage(
                image: AssetImage("assets/BackGround.jpg"), fit: BoxFit.cover)),
        child: Column(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: screenheight * 0.09,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Image(
                  image: AssetImage("assets/name.png"),
                  width: 50,
                ),
                SizedBox(
                  width: 20,
                ),
                Titulo("Restaurante"),
              ]),
            ),
          ),
          Spacer(
            flex: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    showDialog(context: context, builder: (_) =>
                  AlertDialog(
                    title: Text("Sedes Disponibles"),
                    content: Text("Nutibara \nPoblado \nSan Cristobal \nNiquia"),
                    backgroundColor: Colors.green[50]
                    ),
                    barrierDismissible: true,
                    );
                    },
                  child: SizedBox(
                    width: (screenwidth * 0.4),
                    height: (screenheight *0.08),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("assets/map.png"), fit: BoxFit.cover))),
                  )),
              SizedBox(
                width: (screenwidth * 0.1),
              ),
              BttnTextColor(() {
                Navigator.push(context, MaterialPageRoute(builder: (context){return Reserva();}));
              }, "Reservar", Colors.green.shade100,
                  Colors.black, (screenwidth * 0.4), (screenheight*0.08))
            ],
          ),
          Spacer(flex: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LargeButtonBg(() {}, "Entradas", "assets/Entrada.jpg",
                  (screenwidth * 0.4), (screenheight*0.16)),
              SizedBox(
                width: (screenwidth * 0.1),
              ),
              LargeButtonBg(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Fuertes();
                }));
              }, "Platos Fuertes", "assets/Fuerte.jpg",
                  (screenwidth * 0.4), (screenheight*0.16)),
            ],
          ),
          Spacer(flex: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LargeButtonBg(() {}, "Bebidas", "assets/Bebidas.jpg",
                  (screenwidth * 0.4), (screenheight*0.16)),
              SizedBox(
                width: (screenwidth * 0.1),
              ),
              LargeButtonBg(() {}, "Postres", "assets/Postre.jpg",
                  (screenwidth * 0.4), (screenheight*0.16)),
            ],
          ),
          Spacer(
            flex: 2,
          ),
          SizedBox(
            height: screenheight * 0.003,
          )
        ]),
      ),
    )
     );
  }
}