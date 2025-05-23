import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _ipState = prefs.getString('ff_ipState') ?? _ipState;
    });
    _safeInit(() {
      _ColState = prefs.getString('ff_ColState') ?? _ColState;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _ipadress = '';
  String get ipadress => _ipadress;
  set ipadress(String value) {
    _ipadress = value;
  }

  List<EntradasStruct> _entradasSelecionadas = [];
  List<EntradasStruct> get entradasSelecionadas => _entradasSelecionadas;
  set entradasSelecionadas(List<EntradasStruct> value) {
    _entradasSelecionadas = value;
  }

  void addToEntradasSelecionadas(EntradasStruct value) {
    entradasSelecionadas.add(value);
  }

  void removeFromEntradasSelecionadas(EntradasStruct value) {
    entradasSelecionadas.remove(value);
  }

  void removeAtIndexFromEntradasSelecionadas(int index) {
    entradasSelecionadas.removeAt(index);
  }

  void updateEntradasSelecionadasAtIndex(
    int index,
    EntradasStruct Function(EntradasStruct) updateFn,
  ) {
    entradasSelecionadas[index] = updateFn(_entradasSelecionadas[index]);
  }

  void insertAtIndexInEntradasSelecionadas(int index, EntradasStruct value) {
    entradasSelecionadas.insert(index, value);
  }

  String _DataHoraIngresso = '';
  String get DataHoraIngresso => _DataHoraIngresso;
  set DataHoraIngresso(String value) {
    _DataHoraIngresso = value;
  }

  String _coletor = '';
  String get coletor => _coletor;
  set coletor(String value) {
    _coletor = value;
  }

  int _idColetor = 0;
  int get idColetor => _idColetor;
  set idColetor(int value) {
    _idColetor = value;
  }

  int _idEntrad = 0;
  int get idEntrad => _idEntrad;
  set idEntrad(int value) {
    _idEntrad = value;
  }

  String _deviceInfo = '';
  String get deviceInfo => _deviceInfo;
  set deviceInfo(String value) {
    _deviceInfo = value;
  }

  int _itemCount = 0;
  int get itemCount => _itemCount;
  set itemCount(int value) {
    _itemCount = value;
  }

  String _itemSelec = '';
  String get itemSelec => _itemSelec;
  set itemSelec(String value) {
    _itemSelec = value;
  }

  String _ipState = '';
  String get ipState => _ipState;
  set ipState(String value) {
    _ipState = value;
    prefs.setString('ff_ipState', value);
  }

  String _ColState = '';
  String get ColState => _ColState;
  set ColState(String value) {
    _ColState = value;
    prefs.setString('ff_ColState', value);
  }

  int _tipoValidacao = 0;
  int get tipoValidacao => _tipoValidacao;
  set tipoValidacao(int value) {
    _tipoValidacao = value;
  }

  List<String> _listingressosanteriores = [];
  List<String> get listingressosanteriores => _listingressosanteriores;
  set listingressosanteriores(List<String> value) {
    _listingressosanteriores = value;
  }

  void addToListingressosanteriores(String value) {
    listingressosanteriores.add(value);
  }

  void removeFromListingressosanteriores(String value) {
    listingressosanteriores.remove(value);
  }

  void removeAtIndexFromListingressosanteriores(int index) {
    listingressosanteriores.removeAt(index);
  }

  void updateListingressosanterioresAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    listingressosanteriores[index] = updateFn(_listingressosanteriores[index]);
  }

  void insertAtIndexInListingressosanteriores(int index, String value) {
    listingressosanteriores.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
