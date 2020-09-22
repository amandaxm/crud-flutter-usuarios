import 'package:crud_usuario/components/BotaoWidget.dart';
import 'package:crud_usuario/components/TextInputWidget.dart';
import 'package:crud_usuario/models/dto/UsuarioDTO.dart';
import 'package:crud_usuario/services/usuario_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListarUsuarioScreen extends StatefulWidget {
  ListarUsuarioScreen({Key key}) : super(key: key);
  @override
  _ListarUsuarioScreenState createState() => _ListarUsuarioScreenState();
}

class _ListarUsuarioScreenState extends State<ListarUsuarioScreen> {
  Future<UsuarioDTO> futureAlbum;

  @override


  Widget build(BuildContext context) {
    return
      Center(
          child: FutureBuilder<UsuarioDTO>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.nome);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ));
  }
}
