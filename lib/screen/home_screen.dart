import 'package:crud_usuario/components/BotaoWidget.dart';
import 'package:crud_usuario/components/TextInput.dart';
import 'package:crud_usuario/screen/deletar_endereco_screen.dart';
import 'package:crud_usuario/screen/listar_cargo_screen.dart';
import 'package:crud_usuario/screen/usuario_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cargo_screen.dart';
import 'deletar_cargo_screen.dart';
import 'deletar_usuario_screen.dart';
import 'endereco_screen.dart';
import 'listar_endereco_screen.dart';
import 'listar_usuario_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Gerenciador',),
            backgroundColor: Colors.lightGreen
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(82, 10, 20, 0),

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
                      title:"Cadastrar Endereço",
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
                              builder: (context) => ListarEnderecoScreen()),
                        );
                      },
                      title:"Listar Endereços",
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
                              builder: (context) => DeletarEnderecoScreen()),
                        );
                      },
                      title:"Deletar Endereços",
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
                      title:"Cadastrar Usuario",
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
                              builder: (context) => ListarUsuarioScreen()),
                        );
                      },
                      title:"Listar Usuários",
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
                              builder: (context) => DeletarUsuarioScreen()),
                        );
                      },
                      title:"Deletar Usuario",
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
                      title:"Cadastrar Cargo",
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
                              builder: (context) => ListarCargoScreen()),
                        );
                      },
                      title:"Listar Cargos",
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
                              builder: (context) => DeletarCargoScreen()),
                        );
                      },
                      title:"Deletar Cargo",
                    ),
                  ),
                ),
              ]),
        ));
  }
}
