import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ohana_app/main.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Contactez-nous",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Text("Nous vous répondrons en quelques jours"),
              SizedBox(height: 50),
              const Text(
                "Formulaire de contact",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 10),
                height: 8,
                width: MediaQuery.of(context).size.width / 2,
                color: Color(0xffb500b9),
              ),
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: ("Nom complet")),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: ("Adresse mail")),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: ("Objet")),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    minLines: 5,
                    maxLines: 6,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: ("Message"),
                        alignLabelWithHint: true),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(onPressed: () {}, child: Text("Envoyer"))
                ],
              )),
              SizedBox(height: 50),
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(image: AssetImage('assets/images/bureaux.jpg'))),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 50),
                height: 320,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0x80d9d9d9),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Appelez-nous",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      height: 3,
                      width: MediaQuery.of(context).size.width / 3,
                      color: Color(0xffb500b9),
                    ),
                    Text("+33 7 80 52 75 89"),
                    Text("Du lundi au vendredi, 9h - 17h"),
                    SizedBox(height: 25),
                    const Text(
                      "Notre E-Mail",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      height: 3,
                      width: MediaQuery.of(context).size.width / 3,
                      color: Color(0xffb500b9),
                    ),
                    Text("ohana@entreprise.fr"),
                    SizedBox(height: 25),
                    const Text(
                      "Nos bureaux",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      height: 3,
                      width: MediaQuery.of(context).size.width / 3,
                      color: Color(0xffb500b9),
                    ),
                    Text("15 rue des Peupliers \n49000 Angers \nFrance"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
