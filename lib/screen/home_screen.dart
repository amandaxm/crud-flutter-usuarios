import 'package:crud_usuario/components/BotaoWidget.dart';
import 'package:crud_usuario/components/TextInput.dart';
import 'package:crud_usuario/screen/usuario_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cargo_screen.dart';
import 'endereco_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cadastrar Novo',),
            backgroundColor: Colors.lightGreen
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                //de
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Container(
                    height: 50.0, //definiu altura
                    width: 200, //definiu altura
                    child: CustomButtonWidget(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EnderecoScreen()),
                        );
                      },
                      title:"Endereço",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Container(
                    height: 50.0, //definiu altura
                    width: 200, //definiu altura
                    child: CustomButtonWidget(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UsuarioScreen()),
                        );
                      },
                      title:"Usuario",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Container(
                    height: 50.0, //definiu altura
                    width: 200, //definiu altura
                    child: CustomButtonWidget(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EnderecoScreen()),
                        );
                      },
                      title:"Cargo",
                    ),
                  ),
                ),

              ]),
        ));
  }
}
