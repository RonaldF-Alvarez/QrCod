// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:torch_light/torch_light.dart';

Future<bool> onFlashlight() async {
  try {
    // Verifica se a lanterna está disponível no dispositivo
    if (await TorchLight.isTorchAvailable()) {
      // Liga a lanterna
      await TorchLight.enableTorch();
      return true; // Sucesso
    } else {
      // Exibe um erro caso a lanterna não esteja disponível
      throw Exception("Lanterna não disponível neste dispositivo");
    }
  } catch (e) {
    // Tenta desligar a lanterna e retorna erro
    await TorchLight.disableTorch();
    return false;
  }
}
