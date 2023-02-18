import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculadora extends StatelessWidget{
  
  List<int> numerosCalculados = [];
  int? total;

  Widget build(BuildContext context){
    return Scaffold(
       body : Center(
        child: Column(
          children: [
            
            TextField(
            decoration: InputDecoration(
              label:Text('Primeiro numero'),
              hintText: 'Digite o primeiro numero:',
            ),
            onChanged: (String valorDigitado){
              numerosCalculados[0] = parseInt(valorDigitado);
            },
            ),
            TextField(
              decoration: InputDecoration(
                label:Text('Segundo Numero:'),
                hintText: 'Digite o segundo numero:',
              ),
              onChanged: (String valorDigitado){
                numerosCalculados[1] = parseInt(valorDigitado);
              },
            ),
            ElevatedButton(
            
              child: Text("Soma"),
              onPressed: () {
                total = numerosCalculados[0] + numerosCalculados[1];
                showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Total"),
                    content: Text('$total'),
                  );
                });
              }, 
              
            )
            // ElevatedButton(
            //     onPressed: (){
            //       showDialog(context: context, 
            //         builder: (context){
                    
            //           total = numerosCalculados[0] + numerosCalculados[1];
            //           return AlertDialog(
                        
            //           );
            //       )
                  
            //     },
            // )
            
          ],
        
          )
        )
      );
  }
}