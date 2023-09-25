import 'package:listapersonagensrickandmorty/models/rm_personagens_detail_model.dart';
import 'package:listapersonagensrickandmorty/components/rm_personagens_form.dart';
import 'package:listapersonagensrickandmorty/reporitory/rm_personagens_repository.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String rmPersonagemNome;

  const DetailScreen({required this.rmPersonagemNome, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: RmPersonagensRepository.getRmPersonagensData(rmPersonagemNome),
        builder: (context, snapshot){
          if(snapshot.hasError)
            return Center(
              child: Text(snapshot.error.toString(), style: TextStyle(color: Colors.red),),
            );
          if (!snapshot.hasData)
            return Center(
              child: CircularProgressIndicator(),
            );

          RmPersonagensDetailModel rmPersonagensId = snapshot.data!;

          return RmPersonagemForm(rmPersonagensId: rmPersonagensId);
        },
      ),
    );
  }
}
