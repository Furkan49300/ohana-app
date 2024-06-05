import 'package:flutter/material.dart';

class CyberPrice {
  final String planName;
  final String price;
  final List<String> features;

  CyberPrice({
    required this.planName,
    required this.price,
    required this.features,
  });
}

class CyberPricePage extends StatelessWidget {
  final List<CyberPrice> plans = [
    CyberPrice(
      planName: 'Standard',
      price: '449€ HT/mois',
      features: [
        '1 test d’intrusion (5 jours de pentest)',
        'Contact unique et dédié',
        'Point trimestriel avec un expert',
        'ou',
        '1 jour d’expertise par an:',
        'Formation de votre personnel',
        'Audit de sécurité',
      ],
    ),
    CyberPrice(
      planName: 'Prémium',
      price: '799€ HT/mois',
      features: [
        '2 tests d’intrusion (10 jours de pentest)',
        'Contact unique et dédié',
        'Point trimestriel avec un expert',
        'ou',
        '3 jours d’expertise par an:',
        'Formation de votre personnel',
        'Audit de sécurité',
      ],
    ),
    CyberPrice(
      planName: 'Pro',
      price: 'Sur mesure',
      features: [
        'Test d’intrusion complexe',
        'Redteam, IOT, Infrastructure, mobile',
        'Audit de sécurité / organisationnel',
        'Module sensibilisation personnel',
        'Formations Cybersécurité',
        'Campagne de phishing',
        'Cyber-surveillance',
        'Conseils et expertise',
      ],
    ),
    CyberPrice(
      planName: 'Standard',
      price: '70 € HT/mois',
      features: [
        'Maintenance préventive',
        '1 jour d’expertises par an',
      ],
    ),
    CyberPrice(
      planName: 'Prémium',
      price: '180 € HT/mois',
      features: [
        'Maintenance corrective',
        '3 jours d’expertises par an',
      ],
    ),
    CyberPrice(
      planName: 'Pro',
      price: '370 € HT/mois',
      features: [
        'Maintenance évolutive',
        '5 jours d’expertises par an',
      ],
    ),
    CyberPrice(
      planName: 'Standard',
      price: '100 € HT/mois',
      features: [
        'Maintenance préventive',
        '1 jour d’expertises par an',
      ],
    ),
    CyberPrice(
      planName: 'Prémium',
      price: '350 € HT/mois',
      features: [
        'Maintenance corrective',
        '3 jours d’expertises par an',
      ],
    ),
    CyberPrice(
      planName: 'Pro',
      price: '650€ HT/mois',
      features: [
        'Maintenance évolutive',
        '5 jours d’expertises par an',
      ],
    ),
    CyberPrice(
      planName: 'Standard',
      price: '250€ HT/mois',
      features: [
        'Maintenance préventive',
        '1 jour d’expertises par an',
      ],
    ),
    CyberPrice(
      planName: 'Prémium',
      price: '550€ HT/mois',
      features: [
        'Maintenance corrective',
        '3 jours d’expertises par an',
      ],
    ),
    CyberPrice(
      planName: 'Pro',
      price: '990€ HT/mois',
      features: [
        'Maintenance évolutive',
        '5 jours d’expertises par an',
      ],
    ),
  ];

  final List<String> titles = [
    'Contrat de maintenance cyber-sécurité',
    'Contrat de maintenance site web',
    'Contrat de maintenance application mobile',
    'Contrat de maintenance logiciel',
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> planWidgets = [];
    for (int i = 0; i < plans.length; i++) {
      if (i % 3 == 0) {
        planWidgets.add(
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              titles[(i ~/ 3) % titles.length],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        );
      }
      planWidgets.add(
        SizedBox(
          width: double.infinity,
          child: Card(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    plans[i].planName,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    plans[i].price,
                    style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                  ),
                  SizedBox(height: 10),
                  ...plans[i].features.map((feature) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: Text(
                          feature,
                          style: TextStyle(fontSize: 14),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: planWidgets,
      ),
    );
  }
}
