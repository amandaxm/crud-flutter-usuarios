import 'dart:convert';

import 'package:crud_usuario/Util/network/network.dart';
import 'package:crud_usuario/models/dto/CargoDTO.dart';
import 'package:http/http.dart' as http;

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';



import 'base_service.dart';

class CargoService extends BaseService {

  Future<dynamic> salvarCargo(CargoDTO cargo) {
    return
      this.request(HttpMethod.POST, 'cargo/salvar', body: cargo.toMap())
          .then((response) {
        //  var list = response as List;
        return response;
      }).catchError((error) {
        print(error.toString());
        throw (error);
      });
  }

  Future<dynamic> deletarCargo(int id) {
    return
      this.request(HttpMethod.DELETE, 'cargo/$id')
          .then((response) {
        if (response == null) return null;
        //  var list = response as List;
        return response;
      }).catchError((error) {
        print(error.toString());
        throw (error);
      });
  }
  Future<List<CargoDTO>> buscarCargo() {
    return
      this.request(HttpMethod.GET, '/cargo/listar',
      cacheFirst:true)
          .then((response) {
        if (response == null) return null;
        var list = response as List;
        return list.map((i)=>CargoDTO.map(i)).toList();
      }).catchError((error) {
        print(error.toString());
        throw (error);
      });
  }
}




