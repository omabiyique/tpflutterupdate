import 'package:flutter/material.dart';

import 'formulaire.dart';

class accueil extends StatelessWidget {
  const accueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Examen Individuel Flutter",
          style: TextStyle(
            fontFamily: 'Univers-Font',
            fontSize: 32,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Bienvenue dans mon Application",
              style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'lequire'
              ),
              textAlign: TextAlign.center,
            ),


            //Créer un espacement
            Padding(padding: EdgeInsets.all(15)),

            //Le boutton
            ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
                  backgroundColor: MaterialStatePropertyAll(Colors.green)
              ),
              onPressed: () {
                //Lier la page
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => formPage()
                    )
                );
              },
              child: Text("Next Page",
                style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'trocchi'
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
