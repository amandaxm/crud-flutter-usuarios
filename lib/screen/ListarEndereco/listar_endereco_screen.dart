import 'package:crud_usuario/components/TextInputWidget.dart';
import 'package:crud_usuario/models/dto/CargoDTO.dart';
import 'package:crud_usuario/models/dto/EnderecoDTO.dart';
import 'package:crud_usuario/models/dto/UsuarioDTO.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'listar_endereco_controller.dart';

class ListarEnderecoScreen extends StatefulWidget {
  @override
  _ListarEnderecoScreenState createState() => _ListarEnderecoScreenState();
}

class _ListarEnderecoScreenState extends State<ListarEnderecoScreen> {
  final _listar_endereco_controller = ListarEnderecoController();
  static const color = const Color(0xFFe02041);
  static const color2 = const Color(0xFFf0f0f5);


  @override
  void initState() {
    _listar_endereco_controller.listarCargo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const color3 = const Color(0xFFe41414d);

    return Observer(builder: (_){
      if (!_listar_endereco_controller.listar.isDone)
        return SizedBox.shrink();
      else
        return Scaffold(

            appBar: AppBar(
                title: Text("Endereços cadastrados"), backgroundColor: color),
            backgroundColor: color2,
            body:  ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 60, bottom: 10),),
                Icon(Icons.home_work_rounded, size: 100.0, color: color3),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: this
                        ._listar_endereco_controller
                        .listar.getData.map((endereco) {
                      return this.build_listar(endereco);
                    }).toList())
              ],
            ));
    },
    );
  }

  Widget build_listar(EnderecoDTO endereco) {
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
                endereco.rua),

          ],
        ));

  }
}