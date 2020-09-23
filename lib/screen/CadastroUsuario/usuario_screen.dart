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
  static const color = const Color(0xFFe02041);
  static const color2 = const Color(0xFFf0f0f5);
  static  const color3 = const Color(0xFFe41414d);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Cadastrar Usuario"), backgroundColor: color),
      backgroundColor: color2,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [


            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            ),
            Icon(Icons.person_add_alt_1, size: 150.0, color: color3),

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
