import 'package:crud_usuario/components/TextInputWidget.dart';
import 'package:crud_usuario/models/dto/CargoDTO.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'listar_cargo_controller.dart';

class ListarCargoScreen extends StatefulWidget {
  @override
  _ListarCargoScreenState createState() => _ListarCargoScreenState();
}

class _ListarCargoScreenState extends State<ListarCargoScreen> {
  final _listar_cargo_controller = ListarCargoController();

  @override
  void initState() {
    _listar_cargo_controller.listarCargo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_){
      if (!_listar_cargo_controller.listar.isDone) return SizedBox.shrink();

      return ListView(
        children: [
          Column(
              children: this._listar_cargo_controller.listar.getData.map((cargo) {
                return this.build_listar(cargo);
              }).toList())
        ],
      );
    },);

  }

  Widget build_listar(CargoDTO cargo) {
    return Text(
        cargo.nome);
  }
}
