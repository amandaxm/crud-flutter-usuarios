import 'package:crud_usuario/components/BotaoWidget.dart';
import 'package:crud_usuario/components/TextInputWidget.dart';
import 'package:crud_usuario/models/dto/CargoDTO.dart';
import 'package:crud_usuario/models/dto/UsuarioDTO.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cadastro_usuario_controller.dart';



class UsuarioScreen extends StatefulWidget {
  @override
  _UsuarioScreenState createState() => _UsuarioScreenState();
}

class _UsuarioScreenState extends State<UsuarioScreen> {
  CargoDTO cargo;
  final _usuarioEnderecoController = CadastroUsuarioController();
  final txtNome = TextEditingController();
  final txtIdade = TextEditingController();
  final txtCPF = TextEditingController();
  final txtAtivo = TextEditingController();
  final txtCargo_id = TextEditingController();
  final txtEmail = TextEditingController();
  final txtNumero = TextEditingController();


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
              controller: txtNome,
              textCapitalization: TextCapitalization.words,
              autocorrect: false,
            ),
            TextFieldWidget(
              label: "Número",
              controller: txtNumero,
              textCapitalization: TextCapitalization.words,

            ),
            TextFieldWidget(
              label: "Email",
              inputType: TextInputType.emailAddress,
              controller: txtEmail,
              textCapitalization: TextCapitalization.words,
              autocorrect: false,

            ),
            TextFieldWidget(
              label: "Idade",
              inputType: TextInputType.number,
              controller: txtIdade,
              autocorrect: false,

            ),
            TextFieldWidget(
              label: "Ativo",
              controller: txtAtivo,
              textCapitalization: TextCapitalization.words,
              autocorrect: false,
            ),
            TextFieldWidget(
              label: "CPF",
              inputType: TextInputType.text,
              controller: txtCPF,
              autocorrect: false,

            ),
            TextFieldWidget(
              label: "ID_Cargo",
              inputType: TextInputType.number,
              controller: txtCargo_id,
              autocorrect: false,

            ),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                    height: 50.0, //definiu altura
                    child: CustomButtonWidget(
                      onPressed: () {

                        UsuarioDTO usuario = UsuarioDTO(
                          nome: txtNome.text,
                          idade: txtIdade.text,
                          email: txtEmail.text,
                          cpf: txtCPF.text,
                          numero:txtNumero.text ,
                          ativo:true,

                        );
                        _usuarioEnderecoController.salvarDadosUsuario(usuario);
                      },
                      title: ('Cadastrar'),
                    ))),
          ],
        ),
      ),
    );

}}
