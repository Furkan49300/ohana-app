import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ohana_app/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AccueilPage extends StatelessWidget {
  AccueilPage({super.key});
  final String texteLong1 =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut";
  final String texteLong2 =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut";
  final String texteLong3 =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut";

  Future<List<Article>> fetchArticles() async {
    final querySnapshot =
        await FirebaseFirestore.instance.collection('article').get();
    return querySnapshot.docs.map((doc) => Article.fromFirestore(doc)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFf2f2f2),
                ),
                height: 350,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage('assets/images/logo.png'),
                      width: 110,
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: const Text(
                        "Lorem ipsum dolor sit , consectetr adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis ",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.clip),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                        width: 180,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shadowColor: const Color(0xffb500b9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () => context.go("/about"),
                            child: const Text("Qui sommes-nous"))),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30, bottom: 20),
                child: Text(
                  "Nos expertises",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ServicesContainer(
                    text: "Développement",
                    iconData: Icons.code,
                  ),
                  ServicesContainer(
                    text: "Design",
                    iconData: Icons.design_services,
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ServicesContainer(
                    text: "Cybersécurité",
                    iconData: Icons.security,
                  ),
                  ServicesContainer(
                    text: "Référencement",
                    iconData: Icons.search,
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ServicesContainer(
                    text: "Pentesting",
                    iconData: Icons.vpn_key,
                  ),
                  ServicesContainer(
                    text: "IA Générative",
                    iconData: Icons.memory,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 70),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: const Color(0xffb500b9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () => context.go('/expertise'),
                    child: const Text("Voir en détails")),
              ),
              const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only(top: 5),
                  height: 5,
                  width: MediaQuery.of(context).size.width / 2,
                  color: const Color(0xffb500b9),
                ),
              ),
              const SizedBox(height: 10),
              Text(texteLong1),
              const SizedBox(height: 10),
              Text(texteLong2),
              const SizedBox(height: 10),
              Text(texteLong3),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text("Nos derniers articles",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 25),
                  height: 5,
                  width: MediaQuery.of(context).size.width / 2,
                  color: const Color(0xffb500b9),
                ),
              ),
              FutureBuilder<List<Article>>(
                future: fetchArticles(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    final articles = snapshot.data ?? [];
                    return Column(
                      children: articles.map((article) {
                        return Column(
                          children: [
                            ArticleLink(
                              imageUrl: article.image,
                              title: article.title,
                              text: article.description,
                              onTap: () => context.go(
                                  '/article/${article.id}'), // Mise à jour pour utiliser l'ID de l'article
                            ),
                            const SizedBox(height: 10),
                          ],
                        );
                      }).toList(),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServicesContainer extends StatelessWidget {
  const ServicesContainer(
      {super.key, required this.text, required this.iconData});
  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffb500b9),
        borderRadius: BorderRadius.circular(25),
      ),
      height: 150,
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Icon(
              iconData,
              size: 75,
              color: Colors.white,
            ),
          ),
          Text(
            text,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class ArticleLink extends StatelessWidget {
  final String imageUrl;
  final String title;
  final VoidCallback onTap;
  final String text;

  const ArticleLink({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(imageUrl),
          Text(title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(
            text,
            maxLines: 5,
          ),
          SizedBox(height: 30)
        ],
      ),
    );
  }
}

class Article {
  final String id;
  final String title;
  final String description;
  final String image;

  Article({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
  });

  factory Article.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Article(
      id: doc.id,
      title: data['title'] ?? '',
      description: data['description'] ?? '',
      image: data['image'] ?? '',
    );
  }
}
