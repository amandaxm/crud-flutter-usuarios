import 'package:crud_usuario/Util/service_date/service_status_data.dart';
import 'package:crud_usuario/services/endereco_service.dart';
import 'package:mobx/mobx.dart';

part 'deletar_endereco_controller.g.dart';

class DeletarEnderecoController = _CadastroController with _$DeletarEnderecoController;

abstract class _CadastroController with Store{
  final _deletarEnderecoService = EnderecoService();

  final endereco = ServiceStatusData();
  @action
  void deletarEndereco(int id) {
    //frwkLoading.setLoading(loading: true);
    this._deletarEnderecoService.deletarEndereco(id).then((response) async {
      //frwkLoading.setLoading(loading: false);
      this.endereco.setDone(response);
      //  frwkAlert.showAlert(tn
      //  itle: "Usuario cadastrado com sucesso ",);
    }).catchError((error) {
      print(error);
      // frwkLoading.setLoading(loading: false);
    });

}}
