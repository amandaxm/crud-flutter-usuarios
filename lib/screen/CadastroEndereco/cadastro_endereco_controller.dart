import 'package:crud_usuario/Util/service_date/service_status_data.dart';
import 'package:crud_usuario/models/dto/EnderecoDTO.dart';
import 'package:crud_usuario/services/endereco_service.dart';
import 'package:mobx/mobx.dart';

part 'cadastro_endereco_controller.g.dart';

class CadastroEnderecoController = _CadastroController with _$CadastroEnderecoController;

abstract class _CadastroController with Store{
  final _enderecoService = EnderecoService();

  final endereco = ServiceStatusData();
  @action
  void salvarDadosEndereco(EnderecoDTO enderecoDTO) {
    //frwkLoading.setLoading(loading: true);
    this._enderecoService.salvarEndereco(enderecoDTO).then((response) async {
      //frwkLoading.setLoading(loading: false);
      this.endereco.setDone(response);
      //  frwkAlert.showAlert(title: "Usuario cadastrado com sucesso ",);
    }).catchError((error) {
      print(error);
      // frwkLoading.setLoading(loading: false);
    });
  }

}

