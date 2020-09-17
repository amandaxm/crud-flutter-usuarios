import 'package:crud_usuario/components/BotaoWidget.dart';
import 'package:crud_usuario/components/TextInput.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeletarEnderecoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deletar Endereço"),
          backgroundColor: Colors.lightGreen
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFieldWidget(
              label: "Id Endereco",
            ),

            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                    height: 50.0, //definiu altura
                    child:
                    CustomButtonWidget(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      title: ('Deletar Endereco'),

                    )

                )),

          ],
        ),
      ),
    );
  }
}
