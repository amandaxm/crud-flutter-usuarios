import 'package:crud_usuario/components/BotaoWidget.dart';
import 'package:crud_usuario/components/TextInputWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'deletar_cargo_controller.dart';

class DeletarCargoScreen extends StatelessWidget {
  final _deletar_cargo_controller = DeletarCargoController();
  final txtId = TextEditingController();
  static const color = const Color(0xFFe02041);
  static const color2 = const Color(0xFFf0f0f5);
  static  const color3 = const Color(0xFFe41414d);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Deletar Cargo"), backgroundColor: color),
      backgroundColor: color2,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 60, bottom: 10),),
            TextFieldWidget(
              label: "Cógico Cargo a ser deletado",
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

            Icon(Icons.delete, size: 100.0, color: color3),


          ],
        ),
      ),
    );
  }
}
