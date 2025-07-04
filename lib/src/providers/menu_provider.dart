// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/services.dart';

class _MenuProvider {
  List<dynamic> opciones = [];
  _MenuProvider() {
    //cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');

    Map dataMap = json.decode(resp);
    opciones = dataMap['rutas'];

    return opciones;
  }
}

final menuProvider = _MenuProvider();
