import 'dart:convert';

import 'package:listapersonagensrickandmorty/const/const.dart';
import 'package:listapersonagensrickandmorty/models/rm_personagens_list_model.dart';
import 'package:listapersonagensrickandmorty/models/rm_personagens_detail_model.dart';
import 'package:http/http.dart' as http;

class RmPersonagensRepository{
  static Future<List<RmPersonagensListModel>> getRmPersonagens() async{
    Uri uri = Uri.https('rickandmortyapi.com', '/api/character');

    http.Response resposta = await http.get(uri);
    var respostaObj = jsonDecode(resposta.body);

    List<RmPersonagensListModel> rmPersonagensList = [];

    (respostaObj['results'] as List<dynamic>).forEach((element) {
      rmPersonagensList.add(RmPersonagensListModel.fromJson(element as JsonMap));
    });

    return rmPersonagensList;
  }
  static Future<RmPersonagensDetailModel> getRmPersonagensData(String personagemId) async {
    Uri uri = Uri.https('rickandmortyapi.com', '/api/character/$personagemId');
    http.Response resposta = await http.get(uri);

    return RmPersonagensDetailModel.fromJson(jsonDecode(resposta.body));
  }
}