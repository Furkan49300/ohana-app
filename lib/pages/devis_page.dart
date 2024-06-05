import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DevisPage extends StatefulWidget {
  @override
  _DevisPageState createState() => _DevisPageState();
}

class _DevisPageState extends State<DevisPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _detailsController = TextEditingController();

  String? _selectedPrestation;
  final List<String> prestations = [
    'Site Vitrine',
    'Site E-commerce',
    'Landing Page',
    'Site sur mesure',
    'Hébergement',
    'Maintenance',
    'Référencement',
    'Marketing / Publicité Digitale',
    'Application Marketing',
    'Application E-commerce',
    'Application Marketplace',
    'Application de réseaux sociaux',
    'Application gestion interne',
    'Logiciel basique',
    'Logiciel Marketing',
    'Logiciel sur types Marketplace',
    'Logiciel gestion interne',
    'Logiciel sur mesure'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Faire un Devis'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Nom',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer votre nom';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer votre email';
                  } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Veuillez entrer un email valide';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Prestation',
                  border: OutlineInputBorder(),
                ),
                value: _selectedPrestation,
                items: prestations.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _selectedPrestation = newValue;
                  });
                },
                validator: (value) {
                  if (value == null) {
                    return 'Veuillez sélectionner une prestation';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _detailsController,
                decoration: InputDecoration(
                  labelText: 'Détails',
                  border: OutlineInputBorder(),
                ),
                maxLines: 5,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer les détails de votre demande';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Devis envoyé!')),
                    );
                  }
                },
                child: Text('Envoyer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
