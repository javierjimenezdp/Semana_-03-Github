import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fourth_project/widgets/formulario.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pago con Tarjeta de Credito'),
        ),
        body: formCard()
        ),
      );
  }
}