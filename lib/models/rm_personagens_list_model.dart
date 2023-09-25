import 'package:listapersonagensrickandmorty/const/const.dart';

class RmPersonagensListModel{
  int id = 0;
  String name = '';
  String image = '';
  String url = '';

  RmPersonagensListModel({required this.id, required this.name, required this.image, required this.url});

  RmPersonagensListModel.fromJson(JsonMap json){
    this.id = json['id'];
    this.name = json['name'];
    this.image = json['image'];
    this.url = json['url'];
  }
}