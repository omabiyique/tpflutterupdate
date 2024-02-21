import 'package:flutter/material.dart';

import 'accueil.dart';
import 'formulaire.dart';

class verification extends StatelessWidget {

  String lastName, firstName, email;
  //DateTime selectedDate;

  verification({required this.lastName, required this.firstName,
    //required this.selectedDate,
    required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vérification",
          style: TextStyle(
            fontFamily: 'Univers-Font',
            fontSize: 32,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Column(
          children: [
            Text("Votre Nom de famille est : $lastName \n \n"
                "Votre Prénom est : $firstName\n \n"
                "Votre Prénom est : $email \n \n" ,
                //"Votre Prénom est : $selectedDate",
              style: const TextStyle(
                fontFamily: 'jackpot',
                fontSize: 24,
              ),
            ),

            const Padding(padding: EdgeInsets.all(20)),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.green)
                  ),
                  onPressed: (){

                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                        accueil()
                    )
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Merci de vous être inscrit")
                        )
                    );
                  },
                  child: const Text("OUI",
                    style: TextStyle(
                        fontFamily: 'trocchi',
                        fontSize: 32
                    ),)
              ),
            ),

            const Padding(padding: EdgeInsets.all(10)),

            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.red)
                  ),
                  onPressed: (){

                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                        formPage()
                    )
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Veuillez renvoyer le Formulaire")
                        )
                    );
                  },
                  child: const Text("NON",
                    style: TextStyle(
                        fontFamily: 'trocchi',
                        fontSize: 32
                    ),
                  )
              ),
            )

          ],
        ),
      ),
    );
  }
}

