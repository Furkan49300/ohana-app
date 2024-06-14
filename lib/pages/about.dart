import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:ohana_app/main.dart';

class AboutPage extends StatelessWidget {
  AboutPage({super.key});
  String texteLong =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Image(
                image: AssetImage('assets/images/logo.png'),
                width: 90,
              ),
              const Text("A propos de OHana Entreprise",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              const Text("Expert en développement et cybersécurité"),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                height: 2,
                color: const Color(0xffb500b9),
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: ElevatedButton(
                      onPressed: () => context.go("/about/contact"),
                      child: const Text("Nous contacter"))),
              const SizedBox(height: 16),
              const Text(
                'Histoire :',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'OHana Entreprise a été fondée en 2021 avec la vision de fournir des solutions informatiques innovantes et personnalisées à ses clients. Au fil des années, nous avons consolidé expertise dans le domaine de la conception de logiciels, d\'applications web et mobiles, ainsi que dans le secteur de la cybersécurité.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Mission :',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Notre mission est de répondre aux besoins spécifiques de nos clients en leur fournissant des solutions technologiques de qualité, tout en garantissant leur sécurité et leur satisfaction.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Valeurs :',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Nos valeurs fondamentales incluent l\'excellence, l\'intégrité, l\'innovation et le service client. Chacune de nos actions est guidée par ces principes.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Équipe :',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Notre équipe est composée de professionnels qualifiés et passionnés, possédant une expertise diversifiée dans le développement logiciel, la conception graphique et la cybersécurité. Nous travaillons ensemble pour offrir des solutions de haute qualité et des résultats à nos clients.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Services de Développement',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 10),
                height: 2,
                color: Color(0xffb500b9),
                width: MediaQuery.of(context).size.width / 2,
              ),
              const SizedBox(height: 16),
              const Text(
                'Développement Web :',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Notre équipe de développeurs web qualifiés conçoit et développe des sites web sur mesure pour répondre aux besoins spécifiques de nos clients. Nous accordons une attention particulière à la convivialité et à la performance, garantissant ainsi une expérience utilisateur optimale et une navigation fluide.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Applications :',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Nous sommes spécialisés dans la création d\'applications mobiles pour les plateformes iOS et Android. Nos développeurs mettent en œuvre les dernières technologies pour offrir des applications intuitives, fonctionnelles et adaptées aux besoins de nos clients, garantissant ainsi une expérience utilisateur fluide.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Logiciels :',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Notre équipe de développement logiciel conçoit et développe des solutions logicielles personnalisées pour répondre aux exigences spécifiques de nos clients. Nous nous assurons que nos logiciels sont robustes, sécurisés et évolutifs, en veillant à ce qu\'ils correspondent parfaitement aux besoins opérationnels de nos clients.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Design :',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Nos services de conception graphique visent à créer des interfaces utilisateur attrayantes et fonctionnelles. Nous combinons esthétique et fonctionnalité pour offrir une expérience utilisateur optimale, en veillant à ce que le design de chaque produit soit en parfait accord avec la marque et les objectifs de nos clients.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Référencement :',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Nous proposons des services d\'optimisation des moteurs de recherche pour améliorer la visibilité en ligne de nos clients et augmenter leur trafic organique. Nous mettons en œuvre des stratégies de référencement efficaces pour garantir que nos clients soient bien positionnés dans les résultats de recherche pertinents.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'IA Générative :',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Nous intégrons l\'intelligence artificielle dans nos solutions pour fournir des fonctionnalités innovantes et personnalisées. Nos experts en IA développent des systèmes capables de générer du contenu, de prendre des décisions autonomes et d\'interagir de manière intelligente avec les utilisateurs, offrant ainsi une valeur ajoutée à nos produits et services.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Services de Cybersécurité',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 10),
                height: 2,
                color: Color(0xffb500b9),
                width: MediaQuery.of(context).size.width / 2,
              ),
              const SizedBox(height: 16),
              const Text(
                'Audit de Sécurité :',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Nous effectuons des évaluations approfondies de la sécurité des systèmes informatiques de nos clients pour identifier et prévenir les menaces potentielles. Nos audits de sécurité comprennent une analyse complète des vulnérabilités et des risques, suivie de recommandations pour renforcer la sécurité des systèmes.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Audit de Vulnérabilité :',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Notre équipe identifie et corrige les failles de sécurité afin de renforcer la protection des données sensibles de nos clients. Nous utilisons des outils avancés et des techniques de test approfondies pour détecter et remédier aux vulnérabilités, garantissant ainsi la sécurité des systèmes informatiques.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Audit de Conformité :',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Nous vérifions la conformité aux normes de sécurité et de confidentialité pour garantir la protection des informations confidentielles de nos clients. Nous nous assurons que nos clients respectent les réglementations et les meilleures pratiques en matière de sécurité des données, minimisant ainsi les risques de non-conformité et de violations.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Pentesting :',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Nous réalisons des tests d\'intrusion pour détecter et corriger les vulnérabilités potentielles dans les systèmes informatiques de nos clients. Nos experts simulent des attaques réelles pour évaluer la résistance des systèmes et identifier les failles de sécurité, permettant ainsi aux clients de prendre des mesures correctives appropriées.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Accompagnement Équipe sur Mesure :',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Nous proposons une formation et un support personnalisés pour aider nos clients à renforcer leur posture de sécurité. Nos experts travaillent en étroite collaboration avec les équipes des clients pour les sensibiliser aux menaces de sécurité et les former aux meilleures pratiques de sécurité informatique.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Sécurisation Code Logiciels :',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Nous analysons et renforçons la sécurité des codes informatiques pour prévenir les attaques et les violations de données. Nous utilisons des techniques avancées d\'analyse statique et dynamique pour identifier les vulnérabilités potentielles dans le code source et les corriger en temps opportun.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Offres',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 10),
                height: 2,
                color: Color(0xffb500b9),
                width: MediaQuery.of(context).size.width / 4,
              ),
              const SizedBox(height: 16),
              const Text(
                'Produits sur Mesure :',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Chez OHana Entreprise, nous comprenons que chaque projet est unique. C\'est pourquoi nous proposons des solutions personnalisées adaptées aux besoins spécifiques de nos clients. Notre approche sur mesure garantit que chaque produit répond aux exigences précises de nos clients, offrant ainsi des résultats optimaux et une satisfaction maximale.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Conseils :',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'En plus de nos services de développement et de cybersécurité, nous offrons des consultations et des conseils stratégiques à nos clients. Nos experts travaillent en étroite collaboration avec eux pour comprendre leurs besoins, définir des objectifs clairs et élaborer des stratégies efficaces pour atteindre ces objectifs. Notre objectif est d\'agir en tant que partenaire de confiance pour nos clients, les aidant à prendre des décisions éclairées et à maximiser la valeur de leurs investissements informatiques.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Production Design Sprint :',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Notre approche agile, connue sous le nom de Production Design Sprint, est conçue pour accélérer le processus de conception et garantir des résultats efficaces et tangibles. Cette méthodologie collaborative permet à nos clients de valider rapidement les idées, de résoudre les problèmes potentiels et de créer des prototypes fonctionnels en un temps record. En adoptant cette approche itérative et axée sur les résultats, nous minimisons les risques et maximisons l\'efficacité de chaque projet.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Catalogue Tarifs :',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Chez OHana Entreprise, nous croyons en la transparence totale avec nos clients. C\'est pourquoi nous fournissons une liste détaillée de nos services avec leurs tarifs. Notre catalogue tarifs permet à nos clients de comprendre clairement les coûts associés à chaque service, de planifier leur budget en conséquence et de prendre des décisions éclairées en toute confiance.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Clients',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 10),
                height: 2,
                color: Color(0xffb500b9),
                width: MediaQuery.of(context).size.width / 4,
              ),
              const SizedBox(height: 16),
              const Text(
                'Chez OHana Entreprise, nous avons eu le privilège de collaborer avec une variété de clients, allant des entreprises établies aux entrepreneurs individuels, en passant par les particuliers. Notre clientèle diversifiée reflète notre capacité à répondre aux besoins uniques de différents types de clients, qu\'ils soient des organisations commerciales ou des particuliers à la recherche de solutions technologiques personnalisées.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
