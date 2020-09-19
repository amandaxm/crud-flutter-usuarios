class CargoDTO {
  //CargoDTO({String tarefas, String nome});

  CargoDTO({this.nome, this.tarefas});

  int id;
  String nome;
  String tarefas;

  CargoDTO.map(Map<String, dynamic> json) {
    this.nome = json["nome"];
    this.tarefas = json["descricao"];
  }

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["nome"] = this.nome;
    map["tarefas"] = this.tarefas;
    return map;
  }
}
