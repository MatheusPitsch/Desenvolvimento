import 'dart:convert';

class EventoModel {
  final String cepDestino;
  final String criacao;
  final String data;
  final String dataPostagem;
  final String descricao;
  final String diasUteis;
  final String hora;
  final String prazoGuarda;
  final String status;
  final String tipo;
  final Unidade unidade;
  EventoModel({
    required this.cepDestino,
    required this.criacao,
    required this.data,
    required this.dataPostagem,
    required this.descricao,
    required this.diasUteis,
    required this.hora,
    required this.prazoGuarda,
    required this.status,
    required this.tipo,
    required this.unidade,
  });

  EventoModel copyWith({
    String? cepDestino,
    String? criacao,
    String? data,
    String? dataPostagem,
    String? descricao,
    String? diasUteis,
    String? hora,
    String? prazoGuarda,
    String? status,
    String? tipo,
    Unidade? unidade,
  }) {
    return EventoModel(
      cepDestino: cepDestino ?? this.cepDestino,
      criacao: criacao ?? this.criacao,
      data: data ?? this.data,
      dataPostagem: dataPostagem ?? this.dataPostagem,
      descricao: descricao ?? this.descricao,
      diasUteis: diasUteis ?? this.diasUteis,
      hora: hora ?? this.hora,
      prazoGuarda: prazoGuarda ?? this.prazoGuarda,
      status: status ?? this.status,
      tipo: tipo ?? this.tipo,
      unidade: unidade ?? this.unidade,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cepDestino': cepDestino,
      'criacao': criacao,
      'data': data,
      'dataPostagem': dataPostagem,
      'descricao': descricao,
      'diasUteis': diasUteis,
      'hora': hora,
      'prazoGuarda': prazoGuarda,
      'status': status,
      'tipo': tipo,
      'unidade': unidade.toMap(),
    };
  }

  factory EventoModel.fromMap(Map<String, dynamic> map) {
    return EventoModel(
      cepDestino: map['cepDestino'] as String,
      criacao: map['criacao'] as String,
      data: map['data'] as String,
      dataPostagem: map['dataPostagem'] as String,
      descricao: map['descricao'] as String,
      diasUteis: map['diasUteis'] as String,
      hora: map['hora'] as String,
      prazoGuarda: map['prazoGuarda'] as String,
      status: map['status'] as String,
      tipo: map['tipo'] as String,
      unidade: Unidade.fromMap(map['unidade'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory EventoModel.fromJson(String source) =>
      EventoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'EncomendaModel(cepDestino: $cepDestino, criacao: $criacao, data: $data, dataPostagem: $dataPostagem, descricao: $descricao, diasUteis: $diasUteis, hora: $hora, prazoGuarda: $prazoGuarda, status: $status, tipo: $tipo, unidade: $unidade)';
  }

  @override
  bool operator ==(covariant EventoModel other) {
    if (identical(this, other)) return true;

    return other.cepDestino == cepDestino &&
        other.criacao == criacao &&
        other.data == data &&
        other.dataPostagem == dataPostagem &&
        other.descricao == descricao &&
        other.diasUteis == diasUteis &&
        other.hora == hora &&
        other.prazoGuarda == prazoGuarda &&
        other.status == status &&
        other.tipo == tipo &&
        other.unidade == unidade;
  }

  @override
  int get hashCode {
    return cepDestino.hashCode ^
        criacao.hashCode ^
        data.hashCode ^
        dataPostagem.hashCode ^
        descricao.hashCode ^
        diasUteis.hashCode ^
        hora.hashCode ^
        prazoGuarda.hashCode ^
        status.hashCode ^
        tipo.hashCode ^
        unidade.hashCode;
  }
}

class Unidade {
  final String cidade;
  final String codigo;
  final Endereco endereco;
  final String local;
  final String sto;
  final String tipounidade;
  final String uf;
  Unidade({
    required this.cidade,
    required this.codigo,
    required this.endereco,
    required this.local,
    required this.sto,
    required this.tipounidade,
    required this.uf,
  });

  Unidade copyWith({
    String? cidade,
    String? codigo,
    Endereco? endereco,
    String? local,
    String? sto,
    String? tipounidade,
    String? uf,
  }) {
    return Unidade(
      cidade: cidade ?? this.cidade,
      codigo: codigo ?? this.codigo,
      endereco: endereco ?? this.endereco,
      local: local ?? this.local,
      sto: sto ?? this.sto,
      tipounidade: tipounidade ?? this.tipounidade,
      uf: uf ?? this.uf,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidade': cidade,
      'codigo': codigo,
      'endereco': endereco.toMap(),
      'local': local,
      'sto': sto,
      'tipounidade': tipounidade,
      'uf': uf,
    };
  }

  factory Unidade.fromMap(Map<String, dynamic> map) {
    return Unidade(
      cidade: map['cidade'] as String,
      codigo: map['codigo'] as String,
      endereco: Endereco.fromMap(map['endereco'] as Map<String, dynamic>),
      local: map['local'] as String,
      sto: map['sto'] as String,
      tipounidade: map['tipounidade'] as String,
      uf: map['uf'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Unidade.fromJson(String source) =>
      Unidade.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Unidade(cidade: $cidade, codigo: $codigo, endereco: $endereco, local: $local, sto: $sto, tipounidade: $tipounidade, uf: $uf)';
  }

  @override
  bool operator ==(covariant Unidade other) {
    if (identical(this, other)) return true;

    return other.cidade == cidade &&
        other.codigo == codigo &&
        other.endereco == endereco &&
        other.local == local &&
        other.sto == sto &&
        other.tipounidade == tipounidade &&
        other.uf == uf;
  }

  @override
  int get hashCode {
    return cidade.hashCode ^
        codigo.hashCode ^
        endereco.hashCode ^
        local.hashCode ^
        sto.hashCode ^
        tipounidade.hashCode ^
        uf.hashCode;
  }
}

class Endereco {
  final String bairro;
  final String cep;
  final String codigo;
  final String latitude;
  final String localidade;
  final String logradouro;
  final String longitude;
  final String numero;
  final String uf;
  Endereco({
    required this.bairro,
    required this.cep,
    required this.codigo,
    required this.latitude,
    required this.localidade,
    required this.logradouro,
    required this.longitude,
    required this.numero,
    required this.uf,
  });

  Endereco copyWith({
    String? bairro,
    String? cep,
    String? codigo,
    String? latitude,
    String? localidade,
    String? logradouro,
    String? longitude,
    String? numero,
    String? uf,
  }) {
    return Endereco(
      bairro: bairro ?? this.bairro,
      cep: cep ?? this.cep,
      codigo: codigo ?? this.codigo,
      latitude: latitude ?? this.latitude,
      localidade: localidade ?? this.localidade,
      logradouro: logradouro ?? this.logradouro,
      longitude: longitude ?? this.longitude,
      numero: numero ?? this.numero,
      uf: uf ?? this.uf,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bairro': bairro,
      'cep': cep,
      'codigo': codigo,
      'latitude': latitude,
      'localidade': localidade,
      'logradouro': logradouro,
      'longitude': longitude,
      'numero': numero,
      'uf': uf,
    };
  }

  factory Endereco.fromMap(Map<String, dynamic> map) {
    return Endereco(
      bairro: map['bairro'] as String,
      cep: map['cep'] as String,
      codigo: map['codigo'] as String,
      latitude: map['latitude'] as String,
      localidade: map['localidade'] as String,
      logradouro: map['logradouro'] as String,
      longitude: map['longitude'] as String,
      numero: map['numero'] as String,
      uf: map['uf'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Endereco.fromJson(String source) =>
      Endereco.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Endereco(bairro: $bairro, cep: $cep, codigo: $codigo, latitude: $latitude, localidade: $localidade, logradouro: $logradouro, longitude: $longitude, numero: $numero, uf: $uf)';
  }

  @override
  bool operator ==(covariant Endereco other) {
    if (identical(this, other)) return true;

    return other.bairro == bairro &&
        other.cep == cep &&
        other.codigo == codigo &&
        other.latitude == latitude &&
        other.localidade == localidade &&
        other.logradouro == logradouro &&
        other.longitude == longitude &&
        other.numero == numero &&
        other.uf == uf;
  }

  @override
  int get hashCode {
    return bairro.hashCode ^
        cep.hashCode ^
        codigo.hashCode ^
        latitude.hashCode ^
        localidade.hashCode ^
        logradouro.hashCode ^
        longitude.hashCode ^
        numero.hashCode ^
        uf.hashCode;
  }
}
