import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/wdsFunc.dart';

class Reserva extends StatefulWidget {
  const Reserva({Key? key}) : super(key: key);

  @override
  State<Reserva> createState() => _ReservaState();
}

class _ReservaState extends State<Reserva> {
  DateTime fecha = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, DateTime.now().hour, DateTime.now().minute);
  double screenheight = 0.0;
  double screenwidth = 0.0;
  String? valor;
  @override
  Widget build(BuildContext context) {

    screenheight = MediaQuery.of(context).size.height;
    screenwidth = MediaQuery.of(context).size.width;
    final horas = fecha.hour.toString().padLeft(2, '0');
    final minutos = fecha.minute.toString().padLeft(2, '0');

    return Scaffold(
      body: Center(
        child: Container(
            width: screenwidth,
            height: screenheight,
            color: Colors.green[50],
            child: Column(children: [
              SizedBox(
                height: screenheight*0.09,
                child: DecoratedBox(decoration: BoxDecoration(
                  color: Colors.white
                ), child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                  Titulo("Reservas")
                ],)),
              ),
              SizedBox(
                height: screenheight*0.1,
              ),
              SubTitulo("Selecciona fecha y hora de tu reserva"),
              SizedBox(
                height: screenheight*0.05,
              ),
              ElevatedButton(onPressed: HoraFecha,
              style: ElevatedButton.styleFrom(
                primary: Colors.green.shade300,
                padding: EdgeInsets.all(20),
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                )
              ),
              child: 
              Text('${fecha.day}/${fecha.month}/${fecha.year} $horas:$minutos',)
              ),
              SizedBox(
                height: screenheight*0.1,
              ),
              SubTitulo("Selecciona la sede donde deseas reservar"),
              SizedBox(
                height: screenheight*0.05,
              ),
              Container(
                width: screenwidth * 0.5,
                padding: EdgeInsets.only(left: 15, right: 15),
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: valor,
                    isExpanded: true,
                    items: [
                  DropdownMenuItem(child: Text("Nutibara"), value: "Nutibara",),
                  DropdownMenuItem(child: Text("Poblado"), value: "Poblado",),
                  DropdownMenuItem(child: Text("San Cristobal"), value: "San Cristobal",),
                  DropdownMenuItem(child: Text("Niquia"), value: "Niquia",),
                    ],
                    onChanged: (valor) => setState(() => this.valor = valor.toString()),
                              ),
                )),
              SizedBox(
                height: screenheight*0.2,
              ),
              LargeButton((){}, "Completar Reserva", Colors.green.shade300, (screenwidth*0.4), (screenheight*0.06)),
              Spacer(flex:5)
            ]),
      )),
    );
  }

  Future<DateTime?> selecFecha() => showDatePicker(
    context: context,
    initialDate: fecha,
    firstDate: DateTime(DateTime.now().year),
    lastDate: DateTime(DateTime.now().year+2),
    builder: ((context, child) {
      return Theme(data: ThemeData.light().copyWith(
        colorScheme: ColorScheme.light(
          primary: Colors.green.shade200
        )
      ),child: child!,);
    })
    );
  
  Future<TimeOfDay?> selecHora() => showTimePicker(
    context: context,
    initialTime: TimeOfDay(hour: fecha.hour, minute: fecha.minute),
    builder: ((context, child) {
      return Theme(data: ThemeData.light().copyWith(
        colorScheme: ColorScheme.light(
          primary: Colors.green.shade200
        )
      ),child: child!,);
    })
    );
  
  Future HoraFecha() async{
      DateTime? dt = await selecFecha();
      if(dt == null) return;

      TimeOfDay? tm = await selecHora();
      if(tm == null) return;

      final fechacam = DateTime(dt.year, dt.month, dt.day, tm.hour, tm.minute);
      setState(() {
        fecha = fechacam;
      });
  }
}