import 'package:crud_usuario/components/BotaoWidget.dart';
import 'package:crud_usuario/components/TextInputWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'deletar_cargo_controller.dart';

class DeletarCargoScreen extends StatelessWidget {
  final _deletar_cargo_controller = DeletarCargoController();
  final txtId = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Deletar Cargo"), backgroundColor: Colors.lightGreen),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFieldWidget(
              label: "ID_Cargo",
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

                        _deletar_cargo_controller.deletarCargo(id2);
                      },
                      title: ('Deletar Cargo'),
                    ))),
          ],
        ),
      ),
    );
  }
}
