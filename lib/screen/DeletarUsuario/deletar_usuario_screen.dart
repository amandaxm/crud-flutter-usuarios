import 'package:crud_usuario/components/BotaoWidget.dart';
import 'package:crud_usuario/components/TextInputWidget.dart';
import 'package:crud_usuario/screen/DeletarCargo/deletar_cargo_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'deletar_usuario_controller.dart';

class DeletarUsuarioScreen extends StatelessWidget {
  final _deletar_usuario_controller = DeletarUsuarioController();
  final txtId = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Deletar Usuário"), backgroundColor: Colors.lightGreen),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFieldWidget(
              label: "ID_Usuario",
              inputType: TextInputType.number,
              controller: txtId,
              autocorrect: false,

            ),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                    height: 50.0, //definiu altura
                    child: CustomButtonWidget(
                      onPressed: () {
                        var id2=int.parse(txtId.text);

                        _deletar_usuario_controller.deletarUsuario(id2);
                      },
                      title: ('Deletar Usuario'),
                    ))),
          ],
        ),
      ),
    );
  }
}
