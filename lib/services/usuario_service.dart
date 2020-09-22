import 'dart:convert';

import 'package:crud_usuario/Util/network/network.dart';
import 'package:crud_usuario/models/dto/UsuarioDTO.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;




import 'base_service.dart';

class UsuarioService extends BaseService  {

  Future<dynamic> salvarUsuario(UsuarioDTO usuario) {
    return
       this.request(HttpMethod.POST, 'usuario/salvar',body: usuario.toMap())
        .then((response) {
      if (response == null) return null;
    //  var list = response as List;
      return  response;
    }).catchError((error) {
      print(error.toString());
      throw (error);
    });
  }
  Future<dynamic> deletarUsuario(int id) {
    return
      this.request(HttpMethod.DELETE, 'usuario/$id')
          .then((response) {
        if (response == null) return null;
        //  var list = response as List;
        return  response;
      }).catchError((error) {
        print(error.toString());
        throw (error);
      });
  }
}
Future<UsuarioDTO> listarUsuario() async {
  final response = await http.get('http://192.168.0.6:8080/usuario/listar');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return UsuarioDTO.map(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Falha ao listar usuario');
  }
}