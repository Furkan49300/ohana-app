import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ohana_app/firebase_options.dart';
import 'package:ohana_app/pages/about.dart';
import 'package:ohana_app/pages/accueil.dart';
import 'package:ohana_app/pages/article_detail_page.dart';
import 'package:ohana_app/pages/contact.dart';
import 'package:ohana_app/pages/devis_page.dart';
import 'package:ohana_app/pages/expertises/pricing.dart';
import 'package:ohana_app/pages/expertises/web_pricing_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Color(0x80b500b9)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            shape: MaterialStateProperty.all<OutlinedBorder>(
              const RoundedRectangleBorder(
                side: BorderSide(color: Colors.black),
              ),
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Color.fromARGB(255, 255, 255, 255),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            shape: MaterialStateProperty.all<OutlinedBorder>(
              const RoundedRectangleBorder(
                side: BorderSide(color: Colors.black),
              ),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false, 
      home: const WelcomePage(),
    );
  }
}

final _router = GoRouter(
  routes: [
    GoRoute(path: "/", builder: (_, __) => AccueilPage(), routes: [
      GoRoute(path: "contact", builder: (_, __) => ContactPage()),
      GoRoute(
        path: "article/:id",
        builder: (_, state) => ArticleDetailPage(
          id: state.pathParameters['id']!,
        ),
      ), 
      GoRoute(path: "about", builder: (_, __) => AboutPage(), routes: [
        GoRoute(path: "contact", builder: (_, __) => ContactPage()),
      ]),
      GoRoute(path: "expertise", builder: (_, __) => PricingPage(), routes: [
        GoRoute(path: "devis", builder: (_, __) => DevisPage()),
      ]),
    ]),
  ],
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false, 
      routerConfig: _router,
    );
  }
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const MainApp()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 150,
                width: 150,
                child: Image(image: AssetImage('assets/images/logo.png'))),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'Bienvenue chez OHana !',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
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
