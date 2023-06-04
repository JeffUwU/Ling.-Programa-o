import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Criação da classe
class Calculator extends StatelessWidget{
  @override
  Widget build(BuildContext context){ // Criação do Widget
    return Scaffold( // return do Scaffold para estilização
      appBar: AppBar( // criação da appBar
        elevation: 50, // configuração da sombra
        title: Text('CALCULADORA'), // titulo da appBar
        centerTitle: true, // alinhando ao centro
        toolbarHeight: 40, // altura da appBar
        backgroundColor: Color(0xFF00BFFF), // cor da appBar
        leading: IconButton( // botão de sair do app
          icon: Icon(Icons.reply), // Icone de sair
          onPressed: () { // função para fazer algo se for pressionado
            SystemNavigator.pop(); // Fechar o aplicativo
          },
        ),
          
        ),
      body: Container( // corpo da calculadora
        decoration: BoxDecoration(
          gradient: LinearGradient( // gradiente do fundo
            begin: Alignment.topCenter, // alinhamento
            end: Alignment.bottomCenter,
            colors: [ // cores do gradiente
              Color(0xFF1C1C1C), // cinza
              Color(0xFF000000), // preto
            ]
          ),
        ),
      child: Align( //alinhamento
        alignment: Alignment.bottomCenter, // alinhamento do retangulo
        child: Container( //criação do retangulo para os botões
          margin: EdgeInsets.all(20.0),  // margem das bordas
          height: 500.0, // altura
          width: 400.0, // largura
          decoration: BoxDecoration( // caixa de decoração
            borderRadius: BorderRadius.circular(10.0), // bordas arredendadas
            border: Border.all( // borda do retangulo
              color: Color(0xFF00BFFF), // ciano
              width: 2.0, // largura da borda
            ),
          ),
        ),
        )
      ),
    );
  }
}

