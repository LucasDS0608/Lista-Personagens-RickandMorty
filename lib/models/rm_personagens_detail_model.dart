import 'package:listapersonagensrickandmorty/const/const.dart';
import 'package:listapersonagensrickandmorty/models/rm_personagens_list_model.dart';

class RmPersonagensDetailModel{
  int id = 0;
  String name = '';
  String image = '';
  String species = '';

  RmPersonagensDetailModel({required this.id, required this.name, required this.image, required this.species});

  RmPersonagensDetailModel.fromJson(JsonMap json){
    this.id = json['id'];
    this.name = json['name'];
    this.image = json['image'];
    this.species = json['species'];
  }
}