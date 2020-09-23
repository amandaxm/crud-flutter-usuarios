import 'package:crud_usuario/Util/service_date/service_status_data.dart';
import 'package:crud_usuario/models/dto/CargoDTO.dart';
import 'package:crud_usuario/models/dto/EnderecoDTO.dart';
import 'package:crud_usuario/models/dto/UsuarioDTO.dart';
import 'package:crud_usuario/services/cargo_service.dart';
import 'package:crud_usuario/services/endereco_service.dart';
import 'package:crud_usuario/services/usuario_service.dart';
import 'package:mobx/mobx.dart';

part 'listar_endereco_controller.g.dart';

class ListarEnderecoController = _CadastroController with _$ListarEnderecoController;

abstract class _CadastroController with Store{
  final _enderecoService = EnderecoService();

  final endereco = ServiceStatusData();
  final listar = ServiceStatusData<List<EnderecoDTO>>();

  @action
  listarCargo() {
    //frwkLoading.setLoading(loading: true);
    this._enderecoService.buscarEndereco().then((response) async {
      //frwkLoading.setLoading(loading: false);
      this.listar.setDone(response);
      //  frwkAlert.showAlert(tn
      //  itle: "Usuario cadastrado com sucesso ",);
    }).catchError((error) {
      print(error);
      // frwkLoading.setLoading(loading: false);
    });
  }

}
