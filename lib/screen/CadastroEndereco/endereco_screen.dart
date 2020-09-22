import 'package:crud_usuario/components/BotaoWidget.dart';
import 'package:crud_usuario/components/TextInputWidget.dart';
import 'package:crud_usuario/models/dto/EnderecoDTO.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cadastro_endereco_controller.dart';


class EnderecoScreen extends StatefulWidget {
  @override
  _EnderecoScreenState createState() => _EnderecoScreenState();
}

class _EnderecoScreenState extends State<EnderecoScreen> {
  final _cadastroEnderecoController = CadastroEnderecoController();
  final txtCep = TextEditingController();
  final txtCidade = TextEditingController();
  final txtComplemento = TextEditingController();
  final txtEstado = TextEditingController();
  final txtNumero = TextEditingController();
  final txtRua = TextEditingController();
  final txtUsuario = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Cadastrar Endereco"),
          backgroundColor: Colors.lightGreen),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFieldWidget(
              label: "Rua",
              controller: txtRua,
              textCapitalization: TextCapitalization.words,
              autocorrect: false,
            ),
            TextFieldWidget(
              label: "Número",
              inputType: TextInputType.text,
              controller: txtNumero,
              textCapitalization: TextCapitalization.words,
              autocorrect: false,
            ),
            TextFieldWidget(
              label: "Complemento",
              controller: txtComplemento,
              textCapitalization: TextCapitalization.words,
              autocorrect: false,
            ),
            TextFieldWidget(
              label: "Cidade",
              controller: txtCidade,
              textCapitalization: TextCapitalization.words,

            ),
            TextFieldWidget(
              label: "Estado",
              controller: txtEstado,
              textCapitalization: TextCapitalization.words,

            ),
            TextFieldWidget(
              label: "CEP",
              controller: txtCep,
              textCapitalization: TextCapitalization.words,

            ),
            TextFieldWidget(
              label: "Id_Usuário",
              controller: txtUsuario,
            ),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                    height: 50.0, //definiu altura
                    child: CustomButtonWidget(
                      onPressed: () {

                        EnderecoDTO endereco = EnderecoDTO(
                          cep: txtCep.text,
                          cidade: txtCidade.text,
                          complemento: txtComplemento.text,
                          estado: txtEstado.text,
                          numero:txtNumero.text,
                          rua: txtRua.text,
                          usuario_id: int.parse(txtNumero.text),
                        );

                        _cadastroEnderecoController.salvarDadosEndereco(endereco);
                      },
                      title: ('Cadastrar'),
                    ))),
          ],
        ),
      ),
    );
  }
}



