import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ohana_app/main.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      // Create the data to send to Firestore
      final data = {
        'lastname': _lastNameController.text,
        'firstname': _firstNameController.text,
        'email': _emailController.text,
        'subject': _subjectController.text,
        'content': _contentController.text,
        'date_sent': Timestamp.now(),
      };

      try {
        // Send data to Firestore
        await FirebaseFirestore.instance.collection('messagerie').add(data);

        // Show a success message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Message envoyé!')),
        );

        // Clear the form fields
        _formKey.currentState!.reset();
      } catch (e) {
        // Show an error message if something goes wrong
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(
                  'Erreur lors de l\'envoi du message. Veuillez réessayer.')),
        );
      }
    }
  }

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
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: _firstNameController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: ("Prénom")),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer votre prénom';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: _lastNameController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: ("Nom")),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer votre nom';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: ("Adresse mail")),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer votre adresse mail';
                        } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                            .hasMatch(value)) {
                          return 'Veuillez entrer une adresse mail valide';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: _subjectController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: ("Objet")),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer l\'objet de votre message';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: _contentController,
                      minLines: 5,
                      maxLines: 6,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: ("Message"),
                          alignLabelWithHint: true),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer votre message';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                        onPressed: _submitForm, child: Text("Envoyer"))
                  ],
                ),
              ),
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
                    Text("16 rue du Maine \n49100 Angers \nFrance"),
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
