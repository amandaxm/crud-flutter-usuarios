import 'package:crud_usuario/components/BotaoWidget.dart';
import 'package:crud_usuario/components/TextInputWidget.dart';
import 'package:crud_usuario/models/dto/CargoDTO.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'listar_cargo_controller.dart';

class ListarCargoScreen extends StatefulWidget {
  @override
  _ListarCargoScreenState createState() => _ListarCargoScreenState();
}

class _ListarCargoScreenState extends State<ListarCargoScreen> {
  final _listar_cargo_controller = ListarCargoController();
  static const color = const Color(0xFFe02041);
  static const color2 = const Color(0xFFf0f0f5);
  static const color3 = const Color(0xFFe41414d);

  @override
  void initState() {
    _listar_cargo_controller.listarCargo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        if (!_listar_cargo_controller.listar.isDone) return SizedBox.shrink();

        return Scaffold(
            appBar: AppBar(
                title: Text("Cargos cadastrados"), backgroundColor: color),
            backgroundColor: color2,
            body: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 60, bottom: 10),),
                Icon(Icons.assignment, size: 100.0, color: color3),
                Column(
                    children: this
                        ._listar_cargo_controller
                        .listar
                        .getData
                        .map((cargo) {
                  return this.build_listar(cargo);
                }).toList()),


              ],
            ));
      },
    );
  }

  Widget build_listar(CargoDTO cargo) {
    const color = const Color(0xFFe02041);

    return Container(

        margin:  EdgeInsets.fromLTRB(10, 40, 10, 0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border:Border.all(),
          borderRadius: BorderRadius.all(Radius.circular(9.0)
          ),
                  ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Text(
              cargo.nome,
            ),
          ],
        ));
  }
}
