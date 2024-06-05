import 'package:flutter/material.dart';

class Referencement {
  final String title;
  final List<String> details;
  final String pricing;

  Referencement(
      {required this.title, required this.details, required this.pricing});
}

class ReferencementPage extends StatelessWidget {
  final List<Referencement> referencements = [
    Referencement(
      title: 'Google Adwords (SEM)',
      details: [
        '• Expertise et optimisation des mots clés et enchères sur tous les canaux Google et Youtube',
        '• Rédaction des annonces',
        '• Tests A/B (savoir laquelle des différentes annonces attirent le plus de clients)',
        '• Optimisation continue de vos campagnes publicitaires',
      ],
      pricing:
          'Création de la campagne à 349€ HT et gestion de 15% de votre budget Adwords avec un minimum de 100€ d’honoraires par mois',
    ),
    Referencement(
      title: 'Référencement organique (SEO)',
      details: [
        '• Référencement naturel pour améliorer votre positionnement sur Google',
        '• Expertises, mise en place et thèmes à mettre en oeuvre pour développer votre visibilité sur les moteurs de recherche',
      ],
      pricing: 'À partir de 349€ HT et sur devis suivant projet',
    ),
    Referencement(
      title: 'Stratégie Youtube',
      details: [
        '• Marketing, développement, expertise et consultance',
        '• Stratégie publicité payante par vidéo',
      ],
      pricing: 'À partir de 349€ HT suivant les besoins de votre projet',
    ),
    Referencement(
      title: 'Google Analytics',
      details: [
        '• Mise en place du module sur votre site',
        '• Analyse de votre audience sur vos campagnes publicitaires ou sur votre site internet',
      ],
      pricing: 'Compris avec Adwords ou sur devis',
    ),
    Referencement(
        title: 'Facebook Ads',
        details: [
          '• Gestion, création de visuels et expertise pour vos publicités Facebook',
          '• 4 publications mensuelles avec réalisations de graphismes et photos pour Facebook (selon vos besoins et votre domaine d’activité, dans la partie << posts >>)',
          '• Mise en place d’appels à l’action, concours et idées créatives sur votre page',
          '• Audit et définition de votre stratégie et détermination des cibles de vos clients création de votre persona marketing',
          '• Reportage photo de vos produits (photos simples de votre établissement etc...)',
          '• Analyse, bilan & Statistiques mensuelles très précises sur votre page Facebook',
          '• Consultance et conseils pour le marketing digital'
        ],
        pricing: '349 euro HT par mois'),
    Referencement(
        title: 'Instagram/ Twitter/ Snapchat / Linkedin',
        details: [
          '• Gestion de vos pages (« community management »), expertise et consultance sur ces réseaux'
        ],
        pricing: 'Sur devis'),
    Referencement(
      title: 'Site Internet sous CMS WordPress',
      details: [
        '• Création de votre site Internet avec graphisme pro, adaptable ordinateur, tablette, mobile et interface afin que vous puissiez vous-même ajouter facilement du contenu',
      ],
      pricing: 'À partir de 899€ HT',
    ),
    Referencement(
      title: 'Formation site Internet',
      details: [
        '• Consultance et mise en place d’une stratégie d’acquisition client grâce à votre site Internet Idéal pour les débutants qui se lancent sur Internet',
      ],
      pricing: '99€ par heure ou forfait',
    ),
    Referencement(
      title: 'Mailing/Newsletter',
      details: [
        '• Création et envoi en masse d’emails pour vos newsletters ou vos promotions',
        '• Mise en page responsive, graphisme pro, rédaction du contenu, rapports sur les résultats obtenus',
      ],
      pricing:
          '240€ la mise en place, 100€/rédaction + tarif selon nombre de clients',
    ),
    Referencement(
      title: 'Envoi SMS en masse',
      details: [
        '• Création et envoi de SMS publicitaires à vos clients. Possibilité d’envoi immédiat ou programmé',
      ],
      pricing: '50€ par campagne + 0.12€ par SMS envoyé',
    ),
    Referencement(
      title: 'Rentabilité lancement d’un produit',
      details: [
        '• Audit et calcul pour savoir si un lancement de produit sur Internet vous sera rentable.',
        '• Réflexion sur tous les frais directs et indirects d’un produit',
      ],
      pricing: '99€ par audit',
    ),
    Referencement(
      title: 'Innovations webmarketing',
      details: [
        '• Nous inventons de nouvelles idées marketing pour développer votre CA',
      ],
      pricing: 'Suivant projet',
    ),
    Referencement(
      title: 'Consultance et coaching Webmarketing',
      details: [
        '• Consultance à la carte sur notre expertise dans le domaine du marketing digital afin de développer votre projet et développer vos ventes',
      ],
      pricing: '99€ par heure négociable',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: referencements.map((referencement) {
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
                    referencement.title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  ...referencement.details
                      .map((detail) => Text(detail))
                      .toList(),
                  SizedBox(height: 10),
                  Text(
                    'Prix: ${referencement.pricing}',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
