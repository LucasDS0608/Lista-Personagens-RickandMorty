import 'package:listapersonagensrickandmorty/models/rm_personagens_list_model.dart';
import 'package:listapersonagensrickandmorty/detailscreen/detail_screen.dart';
import 'package:flutter/material.dart';

class RmPersonagensTile extends StatelessWidget {
  final RmPersonagensListModel rmPersonagensList;
  const RmPersonagensTile({required this.rmPersonagensList, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Image(image: NetworkImage(this.rmPersonagensList.image)),
      title: Text(this.rmPersonagensList.name, style: TextStyle(fontSize: 20)),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailScreen(rmPersonagemNome: this.rmPersonagensList.id.toString()),
        ));
      }
    );
  }
}
