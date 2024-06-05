import 'package:flutter/material.dart';

class CyberPricingPage extends StatelessWidget {
  final List<Map<String, String>> pricingInfo = [
    {
      'title': 'Prix des audits de sécurité :',
      'text': 'Environ 850€ HT jusqu’à 17 000€ HT.',
    },
    {
      'title': 'Prix des audits de conformité au RGPD :',
      'text': 'Environ 1 700€ HT jusqu’à 3 400€ HT.',
    },
    {
      'title': 'Prix des services de conformité au RGPD & Privacy by Design :',
      'text':
          'Cette prestation est à affiner et à discuter conjointement avec le client. Il n‘est ainsi pas possible de proposer une estimation du coût sans un premier échange.',
    },
    {
      'title':
          'Prix d’accompagnement dans le choix d’équipements de sécurité :',
      'text':
          'Les prix pour cette prestation débutent entre 850€ HT et 1 700€ HT et peuvent aller au-delà en fonction du type d’accompagnement dont vous avez besoin (benchmarking des solutions logicielles, installation, durcissement de sécurité, etc.).',
    },
    {
      'title': 'Prix des prestations en sécurité du code logiciel :',
      'text':
          'Cette prestation est à affiner et à discuter conjointement avec le client. Il n’est ainsi pas possible de proposer une estimation du coût sans un premier échange.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: pricingInfo.map((info) {
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
                    info['title']!,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(info['text']!),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
