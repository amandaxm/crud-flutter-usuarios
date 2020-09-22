import 'package:crud_usuario/Util/service_date/service_status_data.dart';
import 'package:crud_usuario/models/dto/UsuarioDTO.dart';
import 'package:crud_usuario/services/usuario_service.dart';
import 'package:mobx/mobx.dart';

part 'cadastro_usuario_controller.g.dart';

class CadastroUsuarioController = _CadastroController with _$CadastroUsuarioController;

abstract class _CadastroController with Store{
  final _usuarioService = UsuarioService();

  final usuario = ServiceStatusData();
  @action
  void salvarDadosUsuario(UsuarioDTO usuarioDTO) {
    //frwkLoading.setLoading(loading: true);
    this._usuarioService.salvarUsuario(usuarioDTO).then((response) async {
      //frwkLoading.setLoading(loading: false);
      this.usuario.setDone(response);
      //  frwkAlert.showAlert(tn
      //  itle: "Usuario cadastrado com sucesso ",);
    }).catchError((error) {
      print(error);
      // frwkLoading.setLoading(loading: false);
    });
  }

}
