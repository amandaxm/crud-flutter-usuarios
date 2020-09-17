import 'CargoDTO.dart';
import 'EnderecoDTO.dart';

class UsuarioDTO {
  UsuarioDTO(this.id, this.nome,this.ativo,this.cpf,this.email,this.idade,this.cargo, this.endereco);

  final int id;
  final String nome;
  final String email;
  final String ativo;
  final String idade;
  final String cpf;
  final CargoDTO cargo;
  final List<EnderecoDTO> endereco;

}