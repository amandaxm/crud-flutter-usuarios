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
     const color = const Color(0xFFe02041);
     const color2 = const Color(0xFFf0f0f5);
     const color3 = const Color(0xFFe41414d);


    return Scaffold(
      appBar: AppBar(
          title: Text("Deletar Usuário"), backgroundColor:color),
      backgroundColor: color2,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 60, bottom: 10),),

            TextFieldWidget(
              label: "Código do Usuario a ser deletado",
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
            Icon(Icons.delete, size: 100.0, color: color3),

          ],
        ),
      ),
    );
  }
}
