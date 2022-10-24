void main() {
  List<Cliente> listas = [];
  Viagens viagen1 = new Viagens(
      "22/08/20200", "22/08/20119", 123.55, "Casa Do Cururu",
      dataIn: "22/09/230201", dataOut: "23/09/200122", valorViagem: 200.50);
  Cliente cliente1 = new Cliente("silva", 112312, "Vila rosa", [viagen1]);
  Viagens viagen2 = new Viagens(
      "22/08/2000", "22/08/2019", 1293.55, "Casa Do Cururu",
      dataIn: "22/09/20201", dataOut: "23/09/20031", valorViagem: 20120.50);
  Cliente cliente2 =
      new Cliente("Cachorro sa silva", 123112, "fomosa rosa", [viagen2]);
  Viagens viagen3 = new Viagens(
      "22/08/2000", "22/08/2019", 123.55, "Casa Do Cururu",
      dataIn: "21/09/22001", dataOut: "24/09/20201", valorViagem: 20120.50);
  Cliente cliente3 =
      new Cliente("Cachorro Cururu", 12312, "Vila casa rosa", [viagen3]);
  Viagens viagen4 = new Viagens(
      "22/08/2000", "22/08/2019", 1123123.55, "Casa Do Cururu",
      dataIn: "21/09/22001", dataOut: "24/09/20201", valorViagem: 20120.50);
  Cliente cliente4 =
      new Cliente("primo do Cachorro Cururu", 12312, "Vila casa rosa", [viagen4]);
  Viagens viagen5 = new Viagens(
      "22/08/2000", "22/08/2019", 1123123.55, "Casa Do Cururu",
      dataIn: "21/09/22001", dataOut: "24/09/20201", valorViagem: 20120.50);
  Cliente cliente5 =
      new Cliente("Matheus Canela", 12312, "Vila casa rosa", [viagen5]);
  listas.add(cliente1);
  listas.add(cliente2);
  listas.add(cliente3);
  listas.add(cliente4);
  listas.add(cliente5);

  for (var element in listas) {
    print("O Cliente ${element.nome} do cpf: ${element.cpf} do endereço: ${element.endereco} comprou as seguintes viagens:");
    for (var ele in element.viagem! ) {
      print("a Viagem começa no dia ${ele.dataInit} até o dia ${ele.dataEnd}. a hospedagem é no hotel ${ele.nomeHotel} com a data de entrada no dia ${ele.dataIn} e saída em ${ele.dataOut} o valor total é do hotel é de ${ele.valorHotel} reais e da viagem é de ${ele.valorViagem} reais ");
    }
  }
}

class Cliente {
  String? nome;
  int? cpf;
  String? endereco;
  List<Viagens>? viagem;
  Cliente(this.nome, this.cpf, this.endereco, this.viagem);
}

class Viagens {
  String? dataInit;
  String? dataEnd;
  double? valorViagem;

  String? nomeHotel;
  String? dataIn;
  String? dataOut;
  double? valorHotel;
  Viagens(this.dataInit, this.dataEnd, this.valorHotel, this.nomeHotel,
      {this.dataIn, this.dataOut, this.valorViagem}) {
    if (valorHotel == null) {
      valorHotel = 0;
    }
  }
}
