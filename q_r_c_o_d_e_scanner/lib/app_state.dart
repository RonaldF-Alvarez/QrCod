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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

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
}
