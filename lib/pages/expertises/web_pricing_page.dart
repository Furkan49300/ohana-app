import 'package:flutter/material.dart';

class WebPricingPage extends StatelessWidget {
  final List<Map<String, String>> services = [
    {
      'type': 'Site Vitrine',
      'prixMinimum': '0€',
      'prixMoyen': '1 500€',
      'prixMaximum': '+ de 100k €'
    },
    {
      'type': 'Site E-commerce',
      'prixMinimum': '0€',
      'prixMoyen': '3 500€',
      'prixMaximum': '+ de 100k €'
    },
    {
      'type': 'Landing Page',
      'prixMinimum': '0€',
      'prixMoyen': '600€',
      'prixMaximum': '+ de 100k €'
    },
    {
      'type': 'Site sur mesure',
      'prixMinimum': '5 000€',
      'prixMoyen': '20 000€',
      'prixMaximum': '+ de 1M €'
    },
    {
      'type': 'Hébergement',
      'prixMinimum': '5€ / mois',
      'prixMoyen': '50€ / mois',
      'prixMaximum': '+ de 300€ / mois'
    },
    {
      'type': 'Maintenance',
      'prixMinimum': '35€ / mois',
      'prixMoyen': '100€ / mois',
      'prixMaximum': '+ de 1 000€ / mois'
    },
    {
      'type': 'Référencement',
      'prixMinimum': '100€ / mois',
      'prixMoyen': '500€ / mois',
      'prixMaximum': '+ de 2 000€ / mois'
    },
    {
      'type': 'Marketing / Publicité Digitale',
      'prixMinimum': '150€',
      'prixMoyen': '500€ / mois',
      'prixMaximum': '+ de 5 000€ / mois'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: services.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  services[index]['type']!,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text('Prix Minimum: ${services[index]['prixMinimum']}'),
                Text('Prix Moyen: ${services[index]['prixMoyen']}'),
                Text('Prix Maximum: ${services[index]['prixMaximum']}'),
              ],
            ),
          ),
        );
      },
    );
  }
}
