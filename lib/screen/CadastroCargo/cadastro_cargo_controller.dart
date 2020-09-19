import 'package:crud_usuario/Util/service_date/service_status_data.dart';
import 'package:crud_usuario/models/dto/CargoDTO.dart';
import 'package:crud_usuario/services/cargo_service.dart';
import 'package:mobx/mobx.dart';

part 'cadastro_cargo_controller.g.dart';

class CadastroCargoController = _CadastroCargoController with _$CadastroCargoController;

abstract class _CadastroCargoController with Store {
  final _cargoService = CargoService();

  final cargo = ServiceStatusData();
@action
  void salvarDadosCargo(CargoDTO cargoDTO) {
    //frwkLoading.setLoading(loading: true);
    this._cargoService.salvarCargo(cargoDTO).then((response) async {
      //frwkLoading.setLoading(loading: false);
      this.cargo.setDone(response);
    //  frwkAlert.showAlert(title: "Usuario cadastrado com sucesso ",);
    }).catchError((error) {
      print(error);
     // frwkLoading.setLoading(loading: false);
    });
  }
}
