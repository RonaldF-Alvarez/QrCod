import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

String? formatarDataHora(String? dataOriginal) {
  if (dataOriginal == null || dataOriginal.isEmpty) {
    return null; // Retorna null se a data for nula ou vazia
  }

  try {
    // Converter a string para DateTime
    DateTime dataHora = DateTime.parse(dataOriginal);

    // Formatar data e hora
    String dataFormatada = DateFormat('dd/MM/yyyy').format(dataHora);
    String horaFormatada = DateFormat('HH:mm:ss').format(dataHora);

    return '$dataFormatada $horaFormatada'; // Retorna a data formatada
  } catch (e) {
    // Em caso de erro (formato inválido), retorne null ou uma mensagem de erro
    return null;
  }
}
