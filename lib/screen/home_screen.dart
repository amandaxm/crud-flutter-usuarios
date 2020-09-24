import 'package:crud_usuario/components/BotaoWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CadastroCargo/cargo_screen.dart';
import 'CadastroUsuario/usuario_screen.dart';
import 'DeletarCargo/deletar_cargo_screen.dart';
import 'DeletarEndereco/deletar_endereco_screen.dart';
import 'DeletarUsuario/deletar_usuario_screen.dart';
import 'CadastroEndereco/endereco_screen.dart';
import 'ListarCargo/listar_cargo_screen.dart';
import 'ListarEndereco/listar_endereco_screen.dart';
import 'ListarUsuario/listar_usuario_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const color = const Color(0xFFe02041);
  static const color2 = const Color(0xFFf0f0f5);
  static const color3 = const Color(0xFFe41414d);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              'Gerenciador',
            ),
            backgroundColor: color),
        backgroundColor: color2,
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(62, 32, 20, 0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.transparent,
                        blurRadius: 5.0,
                      )
                    ],
                    border: Border.all(),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.home_outlined,size: 35,color:color3),
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
                            title: "Cadastrar Endereço",
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
                                    builder: (context) =>
                                        ListarEnderecoScreen()),
                              );
                            },
                            title: "Listar Endereços",
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
                                    builder: (context) =>
                                        DeletarEnderecoScreen()),
                              );
                            },
                            title: "Deletar Endereços",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(padding: EdgeInsets.all(20)),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.transparent,
                        blurRadius: 5.0,
                      )
                    ],
                    border: Border.all(),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.person_outline,size: 35,color:color3),
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
                            title: "Cadastrar Usuario",
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
                                    builder: (context) =>
                                        ListarUsuarioScreen()),
                              );
                            },
                            title: "Listar Usuários",
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
                                    builder: (context) =>
                                        DeletarUsuarioScreen()),
                              );
                            },
                            title: "Deletar Usuario",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //de

                Padding(padding: EdgeInsets.all(20)),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.transparent,
                        blurRadius: 5.0,
                      )
                    ],
                    border: Border.all(),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.article_outlined,size: 35,color:color3),
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
                                    builder: (context) => CargoScreen()),
                              );
                            },
                            title: "Cadastrar Cargo",
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
                            title: "Listar Cargo",
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
                            title: "Deletar Cargo",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(20)),
              ]),
        ));
  }
}
