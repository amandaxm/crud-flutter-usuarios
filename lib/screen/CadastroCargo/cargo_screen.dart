import 'package:crud_usuario/components/BotaoWidget.dart';
import 'package:crud_usuario/components/TextInputWidget.dart';
import 'package:crud_usuario/models/dto/CargoDTO.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cadastro_cargo_controller.dart';

class CargoScreen extends StatefulWidget {
  @override
  _CargoScreenState createState() => _CargoScreenState();
}

class _CargoScreenState extends State<CargoScreen> {
  final _cadastroCargoController = CadastroCargoController();

  final txtNome = TextEditingController();
  final txtTarefas = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Cadastrar Cargo"), backgroundColor: Colors.lightGreen),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFieldWidget(
              label: "Nome",
              controller: txtNome,
              textCapitalization: TextCapitalization.words,
              autocorrect: false,
            ),
            TextFieldWidget(
              label: "Tarefas",
              controller: txtTarefas,
              textCapitalization: TextCapitalization.words,
              autocorrect: false,
            ),

            TextFieldWidget(
              backgroundColorContainer: Colors.white,
              textColor: Colors.blue,
              placeholder: "",
              controller: txtNome,
              textCapitalization: TextCapitalization.words,
              autocorrect: false,
            ),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                    height: 50.0, //definiu altura
                    child: CustomButtonWidget(
                      onPressed: () {
                        //Navigator.pop(context);
                        CargoDTO cargo2 = CargoDTO(
                          nome: txtNome.text,
                          tarefas: txtTarefas.text,
                        );

                        _cadastroCargoController.salvarDadosCargo(cargo2);
                      },
                      title: ('Cadastrar'),
                    ))),
          ],
        ),
      ),
    );
  }
}
