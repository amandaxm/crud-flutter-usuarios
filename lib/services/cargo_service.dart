import 'package:crud_usuario/Util/network/network.dart';
import 'package:crud_usuario/models/dto/CargoDTO.dart';
import 'package:flutter/cupertino.dart';



import 'base_service.dart';

class CargoService extends BaseService  {

  Future<dynamic> salvarCargo(CargoDTO cargo) {
    return
       this.request(HttpMethod.POST, 'cargo/salvar',body: cargo.toMap())
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
