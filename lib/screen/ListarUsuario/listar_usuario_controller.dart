import 'package:crud_usuario/Util/service_date/service_status_data.dart';
import 'package:crud_usuario/models/dto/CargoDTO.dart';
import 'package:crud_usuario/models/dto/UsuarioDTO.dart';
import 'package:crud_usuario/services/cargo_service.dart';
import 'package:crud_usuario/services/usuario_service.dart';
import 'package:mobx/mobx.dart';

part 'listar_usuario_controller.g.dart';

class ListarUsuarioController = _CadastroController with _$ListarUsuarioController;

abstract class _CadastroController with Store{
  final _usuarioService = UsuarioService();

  final usuario = ServiceStatusData();
  final listar = ServiceStatusData<List<UsuarioDTO>>();

  @action
  listarCargo() {
    //frwkLoading.setLoading(loading: true);
    this._usuarioService.buscarUsuario().then((response) async {
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
