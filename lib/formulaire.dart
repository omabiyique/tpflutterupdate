//import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:tpflutter/verification.dart';

class formPage extends StatefulWidget {
  const formPage({super.key});

  @override
  State<formPage> createState() => _formPageState();
}

class _formPageState extends State<formPage> {

  final _formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  //DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulaire",
          style: TextStyle(
            fontFamily: 'Univers-Font',
            fontSize: 32,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                //Creer un espacement après le champ
                margin: EdgeInsets.only(bottom: 10),

                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: "Last Name",
                      hintText: "Votre Nom de Famille",
                      border: OutlineInputBorder()
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty){
                      return "Veuillez remplir le champ Last Name";
                    }
                    return null;
                  },
                  controller: lastNameController,
                ),
              ),

              Container(
                //Creer un espacement après le champ
                margin: EdgeInsets.only(bottom: 10),

                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: "First Name",
                      hintText: "Votre Prénom",
                      border: OutlineInputBorder()
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty){
                      return "Veuillez remplir le champ First Name";
                    }
                    return null;
                  },
                  controller: firstNameController,
                ),
              ),

              Container(
                //Creer un espacement après le champ
                margin: EdgeInsets.only(bottom: 10),

                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: "Email",
                      hintText: "Votre Email",
                      border: OutlineInputBorder()
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty){
                      return "Veuillez remplir le champ Email";
                    }
                    return null;
                  },
                  controller: emailController,
                ),
              ),


              //DATE DU RENDEZ-VOUS
              //Container(
                //margin: EdgeInsets.only(bottom: 10),
                //child: DateTimeFormField(
                  //decoration: const InputDecoration(
                    //border: OutlineInputBorder(),
                    //labelText: 'Choisir une date',
                    //hintText: "DD/MM/YYYY TT:MM",
                    //suffixIcon: Icon(Icons.event_note),
                  //),
                  //firstDate: DateTime.now().add(const Duration(days: 5)),
                 // lastDate: DateTime.now().add(const Duration(days: 20)),
                 // initialPickerDateTime: DateTime.now().add(const Duration(days: 20)),
                  //onChanged: (DateTime? value) {
                   // setState(() {
                      //selectedDate = value!;
                    //});
                  //},
                //),
             // ),



              //Mon bouton envoyer le formulaire
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.cyanAccent)
                    ),
                    onPressed: (){
                      if (_formKey.currentState!.validate()){
                        final lastName = lastNameController.text;
                        final firstName = firstNameController.text;
                        final email = emailController.text;

                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                            verification(lastName: lastName, firstName : firstName, email : email,)
                        )
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Formulaire en cours d'envoi"))
                        );
                        //Fermer le clavier
                        FocusScope.of(context).requestFocus(FocusNode());

                        //Afficher les valeurs en run
                        print("Votre Nom de Famille est : $lastName et votre Prénom est : $firstName.");
                       // print("Votre date de naissance est : $selectedDate");

                      }
                    },
                    child: Text("ENVOYER",
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
      ),
    );
  }
}
