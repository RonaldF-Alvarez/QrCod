// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClienteStruct extends BaseStruct {
  ClienteStruct({
    int? idCliente,
    String? codigo,
    String? nome,
    String? endereco,
    String? numero,
    String? complemento,
    String? bairro,
    int? codCidade,
    String? uf,
    String? email,
    String? data,
    String? telefone,
    String? primeiraEntrada,
    String? empresa,
    String? cargo,
    String? presente,
    String? id,
    String? dataCadastro,
    String? cpf,
    String? sincronizadoct,
    String? grupoid,
    String? idcontroletotal,
    String? fotosincronizada,
    int? idEmpresa,
    String? nomeEmpresa,
    int? codCargo,
    String? dscCargo,
    int? geradoEmlote,
  })  : _idCliente = idCliente,
        _codigo = codigo,
        _nome = nome,
        _endereco = endereco,
        _numero = numero,
        _complemento = complemento,
        _bairro = bairro,
        _codCidade = codCidade,
        _uf = uf,
        _email = email,
        _data = data,
        _telefone = telefone,
        _primeiraEntrada = primeiraEntrada,
        _empresa = empresa,
        _cargo = cargo,
        _presente = presente,
        _id = id,
        _dataCadastro = dataCadastro,
        _cpf = cpf,
        _sincronizadoct = sincronizadoct,
        _grupoid = grupoid,
        _idcontroletotal = idcontroletotal,
        _fotosincronizada = fotosincronizada,
        _idEmpresa = idEmpresa,
        _nomeEmpresa = nomeEmpresa,
        _codCargo = codCargo,
        _dscCargo = dscCargo,
        _geradoEmlote = geradoEmlote;

  // "idCliente" field.
  int? _idCliente;
  int get idCliente => _idCliente ?? 0;
  set idCliente(int? val) => _idCliente = val;

  void incrementIdCliente(int amount) => idCliente = idCliente + amount;

  bool hasIdCliente() => _idCliente != null;

  // "codigo" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  set codigo(String? val) => _codigo = val;

  bool hasCodigo() => _codigo != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  set endereco(String? val) => _endereco = val;

  bool hasEndereco() => _endereco != null;

  // "numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  set numero(String? val) => _numero = val;

  bool hasNumero() => _numero != null;

  // "complemento" field.
  String? _complemento;
  String get complemento => _complemento ?? '';
  set complemento(String? val) => _complemento = val;

  bool hasComplemento() => _complemento != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  set bairro(String? val) => _bairro = val;

  bool hasBairro() => _bairro != null;

  // "codCidade" field.
  int? _codCidade;
  int get codCidade => _codCidade ?? 0;
  set codCidade(int? val) => _codCidade = val;

  void incrementCodCidade(int amount) => codCidade = codCidade + amount;

  bool hasCodCidade() => _codCidade != null;

  // "uf" field.
  String? _uf;
  String get uf => _uf ?? '';
  set uf(String? val) => _uf = val;

  bool hasUf() => _uf != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "data" field.
  String? _data;
  String get data => _data ?? '';
  set data(String? val) => _data = val;

  bool hasData() => _data != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  set telefone(String? val) => _telefone = val;

  bool hasTelefone() => _telefone != null;

  // "primeiraEntrada" field.
  String? _primeiraEntrada;
  String get primeiraEntrada => _primeiraEntrada ?? '';
  set primeiraEntrada(String? val) => _primeiraEntrada = val;

  bool hasPrimeiraEntrada() => _primeiraEntrada != null;

  // "empresa" field.
  String? _empresa;
  String get empresa => _empresa ?? '';
  set empresa(String? val) => _empresa = val;

  bool hasEmpresa() => _empresa != null;

  // "cargo" field.
  String? _cargo;
  String get cargo => _cargo ?? '';
  set cargo(String? val) => _cargo = val;

  bool hasCargo() => _cargo != null;

  // "presente" field.
  String? _presente;
  String get presente => _presente ?? '';
  set presente(String? val) => _presente = val;

  bool hasPresente() => _presente != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "dataCadastro" field.
  String? _dataCadastro;
  String get dataCadastro => _dataCadastro ?? '';
  set dataCadastro(String? val) => _dataCadastro = val;

  bool hasDataCadastro() => _dataCadastro != null;

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  set cpf(String? val) => _cpf = val;

  bool hasCpf() => _cpf != null;

  // "sincronizadoct" field.
  String? _sincronizadoct;
  String get sincronizadoct => _sincronizadoct ?? '';
  set sincronizadoct(String? val) => _sincronizadoct = val;

  bool hasSincronizadoct() => _sincronizadoct != null;

  // "grupoid" field.
  String? _grupoid;
  String get grupoid => _grupoid ?? '';
  set grupoid(String? val) => _grupoid = val;

  bool hasGrupoid() => _grupoid != null;

  // "idcontroletotal" field.
  String? _idcontroletotal;
  String get idcontroletotal => _idcontroletotal ?? '';
  set idcontroletotal(String? val) => _idcontroletotal = val;

  bool hasIdcontroletotal() => _idcontroletotal != null;

  // "fotosincronizada" field.
  String? _fotosincronizada;
  String get fotosincronizada => _fotosincronizada ?? '';
  set fotosincronizada(String? val) => _fotosincronizada = val;

  bool hasFotosincronizada() => _fotosincronizada != null;

  // "idEmpresa" field.
  int? _idEmpresa;
  int get idEmpresa => _idEmpresa ?? 0;
  set idEmpresa(int? val) => _idEmpresa = val;

  void incrementIdEmpresa(int amount) => idEmpresa = idEmpresa + amount;

  bool hasIdEmpresa() => _idEmpresa != null;

  // "nomeEmpresa" field.
  String? _nomeEmpresa;
  String get nomeEmpresa => _nomeEmpresa ?? '';
  set nomeEmpresa(String? val) => _nomeEmpresa = val;

  bool hasNomeEmpresa() => _nomeEmpresa != null;

  // "codCargo" field.
  int? _codCargo;
  int get codCargo => _codCargo ?? 0;
  set codCargo(int? val) => _codCargo = val;

  void incrementCodCargo(int amount) => codCargo = codCargo + amount;

  bool hasCodCargo() => _codCargo != null;

  // "dscCargo" field.
  String? _dscCargo;
  String get dscCargo => _dscCargo ?? '';
  set dscCargo(String? val) => _dscCargo = val;

  bool hasDscCargo() => _dscCargo != null;

  // "geradoEmlote" field.
  int? _geradoEmlote;
  int get geradoEmlote => _geradoEmlote ?? 0;
  set geradoEmlote(int? val) => _geradoEmlote = val;

  void incrementGeradoEmlote(int amount) =>
      geradoEmlote = geradoEmlote + amount;

  bool hasGeradoEmlote() => _geradoEmlote != null;

  static ClienteStruct fromMap(Map<String, dynamic> data) => ClienteStruct(
        idCliente: castToType<int>(data['idCliente']),
        codigo: data['codigo'] as String?,
        nome: data['nome'] as String?,
        endereco: data['endereco'] as String?,
        numero: data['numero'] as String?,
        complemento: data['complemento'] as String?,
        bairro: data['bairro'] as String?,
        codCidade: castToType<int>(data['codCidade']),
        uf: data['uf'] as String?,
        email: data['email'] as String?,
        data: data['data'] as String?,
        telefone: data['telefone'] as String?,
        primeiraEntrada: data['primeiraEntrada'] as String?,
        empresa: data['empresa'] as String?,
        cargo: data['cargo'] as String?,
        presente: data['presente'] as String?,
        id: data['id'] as String?,
        dataCadastro: data['dataCadastro'] as String?,
        cpf: data['cpf'] as String?,
        sincronizadoct: data['sincronizadoct'] as String?,
        grupoid: data['grupoid'] as String?,
        idcontroletotal: data['idcontroletotal'] as String?,
        fotosincronizada: data['fotosincronizada'] as String?,
        idEmpresa: castToType<int>(data['idEmpresa']),
        nomeEmpresa: data['nomeEmpresa'] as String?,
        codCargo: castToType<int>(data['codCargo']),
        dscCargo: data['dscCargo'] as String?,
        geradoEmlote: castToType<int>(data['geradoEmlote']),
      );

  static ClienteStruct? maybeFromMap(dynamic data) =>
      data is Map ? ClienteStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'idCliente': _idCliente,
        'codigo': _codigo,
        'nome': _nome,
        'endereco': _endereco,
        'numero': _numero,
        'complemento': _complemento,
        'bairro': _bairro,
        'codCidade': _codCidade,
        'uf': _uf,
        'email': _email,
        'data': _data,
        'telefone': _telefone,
        'primeiraEntrada': _primeiraEntrada,
        'empresa': _empresa,
        'cargo': _cargo,
        'presente': _presente,
        'id': _id,
        'dataCadastro': _dataCadastro,
        'cpf': _cpf,
        'sincronizadoct': _sincronizadoct,
        'grupoid': _grupoid,
        'idcontroletotal': _idcontroletotal,
        'fotosincronizada': _fotosincronizada,
        'idEmpresa': _idEmpresa,
        'nomeEmpresa': _nomeEmpresa,
        'codCargo': _codCargo,
        'dscCargo': _dscCargo,
        'geradoEmlote': _geradoEmlote,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idCliente': serializeParam(
          _idCliente,
          ParamType.int,
        ),
        'codigo': serializeParam(
          _codigo,
          ParamType.String,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'endereco': serializeParam(
          _endereco,
          ParamType.String,
        ),
        'numero': serializeParam(
          _numero,
          ParamType.String,
        ),
        'complemento': serializeParam(
          _complemento,
          ParamType.String,
        ),
        'bairro': serializeParam(
          _bairro,
          ParamType.String,
        ),
        'codCidade': serializeParam(
          _codCidade,
          ParamType.int,
        ),
        'uf': serializeParam(
          _uf,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'data': serializeParam(
          _data,
          ParamType.String,
        ),
        'telefone': serializeParam(
          _telefone,
          ParamType.String,
        ),
        'primeiraEntrada': serializeParam(
          _primeiraEntrada,
          ParamType.String,
        ),
        'empresa': serializeParam(
          _empresa,
          ParamType.String,
        ),
        'cargo': serializeParam(
          _cargo,
          ParamType.String,
        ),
        'presente': serializeParam(
          _presente,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'dataCadastro': serializeParam(
          _dataCadastro,
          ParamType.String,
        ),
        'cpf': serializeParam(
          _cpf,
          ParamType.String,
        ),
        'sincronizadoct': serializeParam(
          _sincronizadoct,
          ParamType.String,
        ),
        'grupoid': serializeParam(
          _grupoid,
          ParamType.String,
        ),
        'idcontroletotal': serializeParam(
          _idcontroletotal,
          ParamType.String,
        ),
        'fotosincronizada': serializeParam(
          _fotosincronizada,
          ParamType.String,
        ),
        'idEmpresa': serializeParam(
          _idEmpresa,
          ParamType.int,
        ),
        'nomeEmpresa': serializeParam(
          _nomeEmpresa,
          ParamType.String,
        ),
        'codCargo': serializeParam(
          _codCargo,
          ParamType.int,
        ),
        'dscCargo': serializeParam(
          _dscCargo,
          ParamType.String,
        ),
        'geradoEmlote': serializeParam(
          _geradoEmlote,
          ParamType.int,
        ),
      }.withoutNulls;

  static ClienteStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClienteStruct(
        idCliente: deserializeParam(
          data['idCliente'],
          ParamType.int,
          false,
        ),
        codigo: deserializeParam(
          data['codigo'],
          ParamType.String,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        endereco: deserializeParam(
          data['endereco'],
          ParamType.String,
          false,
        ),
        numero: deserializeParam(
          data['numero'],
          ParamType.String,
          false,
        ),
        complemento: deserializeParam(
          data['complemento'],
          ParamType.String,
          false,
        ),
        bairro: deserializeParam(
          data['bairro'],
          ParamType.String,
          false,
        ),
        codCidade: deserializeParam(
          data['codCidade'],
          ParamType.int,
          false,
        ),
        uf: deserializeParam(
          data['uf'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        data: deserializeParam(
          data['data'],
          ParamType.String,
          false,
        ),
        telefone: deserializeParam(
          data['telefone'],
          ParamType.String,
          false,
        ),
        primeiraEntrada: deserializeParam(
          data['primeiraEntrada'],
          ParamType.String,
          false,
        ),
        empresa: deserializeParam(
          data['empresa'],
          ParamType.String,
          false,
        ),
        cargo: deserializeParam(
          data['cargo'],
          ParamType.String,
          false,
        ),
        presente: deserializeParam(
          data['presente'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        dataCadastro: deserializeParam(
          data['dataCadastro'],
          ParamType.String,
          false,
        ),
        cpf: deserializeParam(
          data['cpf'],
          ParamType.String,
          false,
        ),
        sincronizadoct: deserializeParam(
          data['sincronizadoct'],
          ParamType.String,
          false,
        ),
        grupoid: deserializeParam(
          data['grupoid'],
          ParamType.String,
          false,
        ),
        idcontroletotal: deserializeParam(
          data['idcontroletotal'],
          ParamType.String,
          false,
        ),
        fotosincronizada: deserializeParam(
          data['fotosincronizada'],
          ParamType.String,
          false,
        ),
        idEmpresa: deserializeParam(
          data['idEmpresa'],
          ParamType.int,
          false,
        ),
        nomeEmpresa: deserializeParam(
          data['nomeEmpresa'],
          ParamType.String,
          false,
        ),
        codCargo: deserializeParam(
          data['codCargo'],
          ParamType.int,
          false,
        ),
        dscCargo: deserializeParam(
          data['dscCargo'],
          ParamType.String,
          false,
        ),
        geradoEmlote: deserializeParam(
          data['geradoEmlote'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ClienteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClienteStruct &&
        idCliente == other.idCliente &&
        codigo == other.codigo &&
        nome == other.nome &&
        endereco == other.endereco &&
        numero == other.numero &&
        complemento == other.complemento &&
        bairro == other.bairro &&
        codCidade == other.codCidade &&
        uf == other.uf &&
        email == other.email &&
        data == other.data &&
        telefone == other.telefone &&
        primeiraEntrada == other.primeiraEntrada &&
        empresa == other.empresa &&
        cargo == other.cargo &&
        presente == other.presente &&
        id == other.id &&
        dataCadastro == other.dataCadastro &&
        cpf == other.cpf &&
        sincronizadoct == other.sincronizadoct &&
        grupoid == other.grupoid &&
        idcontroletotal == other.idcontroletotal &&
        fotosincronizada == other.fotosincronizada &&
        idEmpresa == other.idEmpresa &&
        nomeEmpresa == other.nomeEmpresa &&
        codCargo == other.codCargo &&
        dscCargo == other.dscCargo &&
        geradoEmlote == other.geradoEmlote;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idCliente,
        codigo,
        nome,
        endereco,
        numero,
        complemento,
        bairro,
        codCidade,
        uf,
        email,
        data,
        telefone,
        primeiraEntrada,
        empresa,
        cargo,
        presente,
        id,
        dataCadastro,
        cpf,
        sincronizadoct,
        grupoid,
        idcontroletotal,
        fotosincronizada,
        idEmpresa,
        nomeEmpresa,
        codCargo,
        dscCargo,
        geradoEmlote
      ]);
}

ClienteStruct createClienteStruct({
  int? idCliente,
  String? codigo,
  String? nome,
  String? endereco,
  String? numero,
  String? complemento,
  String? bairro,
  int? codCidade,
  String? uf,
  String? email,
  String? data,
  String? telefone,
  String? primeiraEntrada,
  String? empresa,
  String? cargo,
  String? presente,
  String? id,
  String? dataCadastro,
  String? cpf,
  String? sincronizadoct,
  String? grupoid,
  String? idcontroletotal,
  String? fotosincronizada,
  int? idEmpresa,
  String? nomeEmpresa,
  int? codCargo,
  String? dscCargo,
  int? geradoEmlote,
}) =>
    ClienteStruct(
      idCliente: idCliente,
      codigo: codigo,
      nome: nome,
      endereco: endereco,
      numero: numero,
      complemento: complemento,
      bairro: bairro,
      codCidade: codCidade,
      uf: uf,
      email: email,
      data: data,
      telefone: telefone,
      primeiraEntrada: primeiraEntrada,
      empresa: empresa,
      cargo: cargo,
      presente: presente,
      id: id,
      dataCadastro: dataCadastro,
      cpf: cpf,
      sincronizadoct: sincronizadoct,
      grupoid: grupoid,
      idcontroletotal: idcontroletotal,
      fotosincronizada: fotosincronizada,
      idEmpresa: idEmpresa,
      nomeEmpresa: nomeEmpresa,
      codCargo: codCargo,
      dscCargo: dscCargo,
      geradoEmlote: geradoEmlote,
    );
