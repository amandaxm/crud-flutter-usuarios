import 'CargoDTO.dart';
import 'EnderecoDTO.dart';

class UsuarioDTO {
  int id;

  UsuarioDTO(
      {this.nome, this.email, this.ativo, this.idade, this.cpf, this.cargo, this.numero});

  String nome;
  String email;
  bool ativo;
  String idade;
  String cpf;
  String numero;
  CargoDTO cargo;

  UsuarioDTO.map(Map<String, dynamic> json) {
    this.nome = json["nome"];
    this.email = json["email"];
    this.cargo = json["cargo_id"];
    this.ativo = json["ativo"];
    this.idade = json["idade"];
    this.cpf = json["cpf"];
    this.numero = json["numero"];
    this.cargo = json["cargo"] != null ? CargoDTO.map(json["cargo"]) : null;
  }

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["nome"] = this.nome;
    map["email"] = this.email;
    map["cargo"] = this.cargo;
    map["ativo"] = this.ativo;
    map["idade"] = this.idade;
    map["cpf"] = this.cpf;
    map["numero"] = this.numero;

    return map;
  }
}
