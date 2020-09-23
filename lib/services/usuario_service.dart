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

  Future<List<UsuarioDTO>> buscarUsuario() {
    return
      this.request(HttpMethod.GET, '/usuario/listar',
          cacheFirst:true)
          .then((response) {
        if (response == null) return null;
        var list = response as List;
        return list.map((i)=>UsuarioDTO.map(i)).toList();
      }).catchError((error) {
        print(error.toString());
        throw (error);
      });
  }
}