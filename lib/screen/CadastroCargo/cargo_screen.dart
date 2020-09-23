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
  static const color = const Color(0xFFe02041);
  static const color2 = const Color(0xFFf0f0f5);
  static  const color3 = const Color(0xFFe41414d);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Cadastrar Cargo"), backgroundColor: color),
      backgroundColor: color2,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            ),
            Icon(Icons.assignment, size: 150.0, color: color3),
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
