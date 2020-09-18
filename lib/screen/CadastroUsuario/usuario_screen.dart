import 'package:crud_usuario/components/BotaoWidget.dart';
import 'package:crud_usuario/components/TextInputWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsuarioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Cadastrar Usuario"), backgroundColor: Colors.lightGreen),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFieldWidget(
              label: "Nome",
            ),
            TextFieldWidget(
              label: "Email",
              inputType: TextInputType.emailAddress,
            ),
            TextFieldWidget(
              label: "Idade",
              inputType: TextInputType.number,
            ),
            TextFieldWidget(
              label: "Ativo",

            ),
            TextFieldWidget(
              label: "CPF",
              inputType: TextInputType.text,
            ),
            TextFieldWidget(
              label: "Cargo",
              inputType: TextInputType.text,
            ),
            TextFieldWidget(
              label: "Código Endereço",
              inputType: TextInputType.number,
            ),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                    height: 50.0, //definiu altura
                    child: CustomButtonWidget(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      title: ('Cadastrar'),
                    ))),
          ],
        ),
      ),
    );
  }
}