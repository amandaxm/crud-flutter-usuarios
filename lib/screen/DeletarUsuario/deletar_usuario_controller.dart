import 'package:crud_usuario/Util/service_date/service_status_data.dart';
import 'package:crud_usuario/services/usuario_service.dart';
import 'package:mobx/mobx.dart';

part 'deletar_usuario_controller.g.dart';

class DeletarUsuarioController = _CadastroController with _$DeletarUsuarioController;

abstract class _CadastroController with Store{
  final _usuarioService = UsuarioService();

  final usuario = ServiceStatusData();
  @action
  void deletarUsuario(int id) {
    //frwkLoading.setLoading(loading: true);
    this._usuarioService.deletarUsuario(id).then((response) async {
      //frwkLoading.setLoading(loading: false);
      this.usuario.setDone(response);
      //  frwkAlert.showAlert(tn
      //  itle: "Usuario cadastrado com sucesso ",);
    }).catchError((error) {
      print(error);
      // frwkLoading.setLoading(loading: false);
    });


}}
