import 'package:flutter/material.dart';

class ApplicationPricingPage extends StatelessWidget {
  final List<Map<String, String>> applications = [
    {'type': 'Application Marketing', 'prix': 'de 3 000€ à 7 000€'},
    {'type': 'Application E-commerce', 'prix': 'de 20 000€ à 35 000€'},
    {'type': 'Application Marketplace', 'prix': 'de 15 000€ à 25 000€'},
    {'type': 'Application de réseaux sociaux', 'prix': 'de 20 000€ à 35 000€'},
    {'type': 'Application gestion interne', 'prix': 'de 15 000€ à 30 000€'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: applications.map((application) {
        return SizedBox(
          width: double.infinity,
          child: Card(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    application['type']!,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text('Prix: ${application['prix']}'),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
