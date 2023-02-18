import 'dart:html';

import 'package:flutter/material.dart';

// Pagina Inicial do Aplicativo
class PrimeiraPagina extends StatelessWidget{
  String nome = "";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('primeira página')
        ),  
      body : Center(
        child: Column(
          children: [TextField(
            decoration: InputDecoration(
              label:Text('Nome:'),
              hintText: 'Informe o seu nome',
            ),
            onChanged: (String valorDigitado){
              nome = valorDigitado;
            },
          ),
          ElevatedButton(
            child: Text("Ok"),
            onPressed: (){
              showDialog(context: context, 
              builder: (context){
                return AlertDialog(
                  title: Text("Nome:"),
                  content: Text(nome),
                );
              });
            },
          )
            ],
        )
        )
    );
    
  }
  tarefa(valorDigitado){
    print(valorDigitado);
  }
}