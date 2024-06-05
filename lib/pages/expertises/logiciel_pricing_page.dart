import 'package:flutter/material.dart';

class LogicielPricingPage extends StatelessWidget {
  final List<Map<String, String>> logiciels = [
    {'type': 'Logiciel basique', 'prix': 'de 1 000€ à 10 000€'},
    {'type': 'Logiciel Marketing', 'prix': 'de 3 000€ à 7 000€'},
    {'type': 'Logiciel sur types Marketplace', 'prix': 'de 15 000€ à 25 000€'},
    {'type': 'Logiciel gestion interne', 'prix': 'de 15 000€ à 30 000€'},
    {'type': 'Logiciel gestion interne', 'prix': 'de 20 000€ à 35 000€'},
    {'type': 'Logiciel sur mesure', 'prix': 'de 40 000€ à 70 000€'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: logiciels.map((logiciel) {
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
                    logiciel['type']!,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text('Prix: ${logiciel['prix']}'),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
