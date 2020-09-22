import 'package:crud_usuario/Util/service_date/service_status_data.dart';
import 'package:crud_usuario/services/cargo_service.dart';
import 'package:mobx/mobx.dart';

part 'deletar_cargo_controller.g.dart';

class DeletarCargoController = _CadastroController with _$DeletarCargoController;

abstract class _CadastroController with Store{
  final _cargoService = CargoService();

  final cargo = ServiceStatusData();
  @action
  void deletarCargo(int id) {
    //frwkLoading.setLoading(loading: true);
    this._cargoService.deletarCargo(id).then((response) async {
      //frwkLoading.setLoading(loading: false);
      this.cargo.setDone(response);
      //  frwkAlert.showAlert(tn
      //  itle: "Usuario cadastrado com sucesso ",);
    }).catchError((error) {
      print(error);
      // frwkLoading.setLoading(loading: false);
    });


}
}
