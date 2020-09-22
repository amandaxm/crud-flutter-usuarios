import 'package:crud_usuario/Util/service_date/service_status_data.dart';
import 'package:crud_usuario/models/dto/CargoDTO.dart';
import 'package:crud_usuario/services/cargo_service.dart';
import 'package:mobx/mobx.dart';

part 'listar_cargo_controller.g.dart';

class ListarCargoController = _CadastroController with _$ListarCargoController;

abstract class _CadastroController with Store{
  final _cargoService = CargoService();

  final cargo = ServiceStatusData();
  final listar = ServiceStatusData<List<CargoDTO>>();

  @action
   listarCargo() {
    //frwkLoading.setLoading(loading: true);
    this._cargoService.buscarCargo().then((response) async {
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
