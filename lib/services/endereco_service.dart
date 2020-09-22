import 'package:crud_usuario/Util/network/network.dart';
import 'package:crud_usuario/models/dto/CargoDTO.dart';
import 'package:crud_usuario/models/dto/EnderecoDTO.dart';
import 'package:flutter/cupertino.dart';



import 'base_service.dart';

class EnderecoService extends BaseService  {

  Future<dynamic> salvarEndereco(EnderecoDTO endereco) {
    return
       this.request(HttpMethod.POST, 'endereco/salvar',body: endereco.toMap())
        .then((response) {
      if (response == null) return null;
    //  var list = response as List;
      return  response;
    }).catchError((error) {
      print(error.toString());
      throw (error);
    });
  }
  Future<dynamic> deletarEndereco(int id) {
    return
      this.request(HttpMethod.DELETE, 'endereco/$id')
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
