import 'package:flutter/material.dart';
import 'package:listapersonagensrickandmorty/components/rm_personagens_tile.dart';
import 'package:listapersonagensrickandmorty/reporitory/rm_personagens_repository.dart';

class PersonagensRm extends StatefulWidget {
  const PersonagensRm({super.key});

  @override
  State<PersonagensRm> createState() => _PersonagensRmState();
}

class _PersonagensRmState extends State<PersonagensRm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: RmPersonagensRepository.getRmPersonagens(),
        builder: (context, snapshot){
          if (snapshot.hasError)
            return Center(
              child: Text(snapshot.error.toString(), style: TextStyle(color: Colors.red),),
            );

          if (!snapshot.hasData)
            return Center(
              child: CircularProgressIndicator(),
            );

          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) => RmPersonagensTile(rmPersonagensList: snapshot.data![index]),
          );
        },
      ),
    );
  }
}
