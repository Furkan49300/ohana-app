import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ohana_app/firebase_options.dart';
import 'package:ohana_app/pages/about.dart';
import 'package:ohana_app/pages/accueil.dart';
import 'package:ohana_app/pages/article_detail_page.dart'; // Import de la nouvelle page de détails de l'article
import 'package:ohana_app/pages/contact.dart';
import 'package:ohana_app/pages/devis_page.dart';
import 'package:ohana_app/pages/expertises/pricing.dart';
import 'package:ohana_app/pages/expertises/web_pricing_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

final _router = GoRouter(
  routes: [
    GoRoute(path: "/", builder: (_, __) => AccueilPage(), routes: [
      GoRoute(path: "contact", builder: (_, __) => ContactPage()),
      GoRoute(
          path: "article/:id",
          builder: (_, state) => ArticleDetailPage(
              id: state.pathParameters[
                  'id']!)), // Nouvelle route pour la page de détails de l'article
      GoRoute(path: "about", builder: (_, __) => AboutPage(), routes: [
        GoRoute(path: "contact", builder: (_, __) => ContactPage()),
      ]),
      GoRoute(path: "expertise", builder: (_, __) => PricingPage(), routes: [
        GoRoute(path: "devis", builder: (_, __) => DevisPage()),
      ]),
    ])
  ],
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0x80b500b9)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      const RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black))))),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 255, 255, 255)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      const RoundedRectangleBorder(side: BorderSide(color: Colors.black)))))),
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("OHana"),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
            onPressed: () => context.go("/contact"), icon: Icon(Icons.mail))
      ],
      backgroundColor: Color(0xffb500b9),
      leading: IconButton(
        icon: const Icon(Icons.home),
        onPressed: () => context.go("/"),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
