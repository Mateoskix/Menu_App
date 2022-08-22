import 'package:flutter/material.dart';

GestureDetector LargeButton(
    VoidCallback function, String text, Color colour, double x, double y) {
  return GestureDetector(
      onTap: (function),
      child: Container(
        width: x,
        height: y,
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 1)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ));
}

GestureDetector BttnTextColor(VoidCallback function, String text, Color colour,
    Color coltxt, double x, double y) {
  return GestureDetector(
      onTap: (function),
      child: Container(
        width: x,
        height: y,
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 1)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: coltxt),
          ),
        ),
      ));
}

GestureDetector LargeButtonBg(
    VoidCallback function, String text, String ruta, double x, double y) {
  return GestureDetector(
      onTap: (function),
      child: Container(
        width: x,
        height: y,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(ruta), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 2, color: Colors.white),
        ),
        child: Center(
            child: Stack(children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 2
                  ..color = Colors.white),
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          )
        ])),
      ));
}

Text Titulo(String text) {
  return Text(
    text,
    style: const TextStyle(
        fontSize: 30, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
  );
}

Text SubTitulo(String text) {
  return Text(text,
      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
      textAlign: TextAlign.center);
}

SizedBox CampoLect(String text, bool obs) {
  return SizedBox(
    width: 210,
    child: TextField(
      obscureText: obs,
      decoration: InputDecoration(hintText: text),
    ),
  );
}

GestureDetector BttnIcon(VoidCallback func, IconData ico, double tam) {
  return GestureDetector(
      onTap: (func),
      child: Icon(
        ico,
        size: tam,
      ));
}

SizedBox espaciopago() {
  return SizedBox(
    width: 250,
    height: 100,
    child:
        DecoratedBox(decoration: BoxDecoration(border: Border.all(width: 1), borderRadius: BorderRadius.circular(15))),
  );
}
