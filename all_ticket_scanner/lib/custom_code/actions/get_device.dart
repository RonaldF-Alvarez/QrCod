// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_device_name/flutter_device_name.dart';

//Future<String> getDevice() async {
//  final plugin = DeviceName();
//  String deviceName = await plugin.getName();
// try {
//   return 'Device Name: $deviceName';
// } catch (e) {
//  return 'Falha ao conseguir coletor';
//}
//}

Future<String> getDevice() async {
  final plugin = DeviceName();

  try {
    // Obtem o nome do dispositivo e garante que ele não será nulo
    String? deviceName = await plugin.getName();

    // Se `deviceName` for null, retorna um valor padrão
    return '${deviceName ?? "Desconhecido"}';
  } catch (e) {
    // Tratamento em caso de exceção
    return 'Falha ao conseguir coletor';
  }
}
