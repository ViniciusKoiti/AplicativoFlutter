import 'package:flutter/material.dart';
import 'package:projeto/widgets/Calculadora.dart';
import 'package:projeto/widgets/primeira_pagina.dart';

// Aplicativo que sera iniciado
class Configuracoes extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      //tira a fita de debug
        debugShowCheckedModeBanner: false,
        title: "Aula",
        theme: ThemeData(primaryColor: Colors.blue),
        home : Calculadora()
        );
      }
}