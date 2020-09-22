import 'package:crud_usuario/models/dto/UsuarioDTO.dart';

class EnderecoDTO {


  //CargoDTO({String tarefas, String nome});

  EnderecoDTO({this.rua, this.numero,this.complemento,
  this.estado,this.cidade,this.cep,this.usuario_id});

  String numero;
  String rua;
  String complemento;
  String estado;
  String cidade;
  String cep;
  int usuario_id;

  EnderecoDTO.map(Map<String, dynamic> json) {
    this.cep = json["cep"];
    this.cidade = json["cidade"];
    this.estado = json["estado"];
    this.complemento=json["complemento"];
    this.rua=json["rua"];
    this.usuario_id=json["usuario.id"];
  }

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["cep"]=this.cep ;
    map["cidade"]=this.cidade;
    map["estado"]=this.estado;
    map["complemento"]=this.complemento;
    map["rua"]=this.rua;
    map["usuario.id"]=this.usuario_id;
    return map;
  }
}
