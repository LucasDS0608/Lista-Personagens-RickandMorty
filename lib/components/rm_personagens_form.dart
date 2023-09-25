import 'package:listapersonagensrickandmorty/models/rm_personagens_detail_model.dart';
import 'package:flutter/material.dart';

class RmPersonagemForm extends StatelessWidget {
  final RmPersonagensDetailModel rmPersonagensId;
  const RmPersonagemForm({required this.rmPersonagensId, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image(image: NetworkImage(this.rmPersonagensId.image)),
        Text(this.rmPersonagensId.name),
        Text(this.rmPersonagensId.species)
      ],
    );
  }
}
