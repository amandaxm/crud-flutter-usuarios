import 'package:crud_usuario/components/TextInputWidget.dart';
import 'package:crud_usuario/models/dto/CargoDTO.dart';
import 'package:crud_usuario/models/dto/UsuarioDTO.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'listar_usuario_controller.dart';

class ListarUsuarioScreen extends StatefulWidget {
  @override
  _ListarUsuarioScreenState createState() => _ListarUsuarioScreenState();
}

class _ListarUsuarioScreenState extends State<ListarUsuarioScreen> {
  final _listar_usuario_controller = ListarUsuarioController();
  static const color = const Color(0xFFe02041);
  static const color2 = const Color(0xFFf0f0f5);
  static const color3 = const Color(0xFFe41414d);


  @override
  void initState() {
    _listar_usuario_controller.listarCargo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_){
      if (!_listar_usuario_controller.listar.isDone)
        return SizedBox.shrink();
      else
        return Scaffold(

            appBar: AppBar(
                title: Text("Usuarios cadastrados"), backgroundColor: color),
            backgroundColor: color2,
            body:  ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 60, bottom: 10),),
                Icon(Icons.person, size: 100.0, color: color3),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,

                    children: this
                        ._listar_usuario_controller
                        .listar.getData.map((usuario) {
                      return this.build_listar(usuario);
                    }).toList())
              ],

            ));
    },
    );
  }

  Widget build_listar(UsuarioDTO usuario) {
    const color = const Color(0xFFe02041);

    return Container(

        margin:  EdgeInsets.fromLTRB(10, 40, 10, 0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.all(Radius.circular(9.0)),
        ),
        child: Column(
          children: [
            Text(
                usuario.nome),

          ],
        ));

  }
}