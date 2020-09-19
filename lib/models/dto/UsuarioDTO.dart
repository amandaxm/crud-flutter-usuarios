
import 'CargoDTO.dart';
import 'EnderecoDTO.dart';


class UsuarioDTO {

  int id;
  String nome;
  String email;
  String ativo;
  String idade;
  String cpf;
  CargoDTO cargo;
  List<EnderecoDTO> endereco;


  UsuarioDTO.map(Map<String, dynamic> json) {
    this.nome = json["nome"];
    this.email = json["email"];
    this.cargo = json["cargo"];
    this.ativo = json["ativo"];
    this.idade = json["idade"];
    this.cpf = json["cpf"];
    this.endereco = json["endereco"];
  }

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["nome"] = this.nome;
    map["email"]= this.email;
    map["cargo"]= this.cargo;
    map["ativo"]= this.ativo;
    map["idade"]= this.idade;
    map["endereco"]= this.endereco;
    return map;
  }
}