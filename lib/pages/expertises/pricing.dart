import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:ohana_app/main.dart';
import 'package:ohana_app/pages/expertises/application_pricing_page.dart';
import 'package:ohana_app/pages/expertises/cyber_pricing_page.dart';
import 'package:ohana_app/pages/expertises/logiciel_pricing_page.dart';
import 'package:ohana_app/pages/expertises/pricing_plans_page.dart';
import 'package:ohana_app/pages/expertises/referencement_page.dart';
import 'package:ohana_app/pages/expertises/web_pricing_page.dart';

class PricingPage extends StatelessWidget {
  PricingPage({super.key});
  String textLong =
      "Usmod tempor usmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text("Découvrez nos prestations",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            SizedBox(height: 15),
            Text(textLong),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: ElevatedButton(
                  onPressed: () => context.go('/expertise/devis'),
                  child: Text("Faire un devis")),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: AssetImage('assets/images/presta.png'),
              ),
            ),
            Text("Développement Web",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              height: 2,
              color: Color(0xffb500b9),
              width: MediaQuery.of(context).size.width / 2,
            ),
            WebPricingPage(),
            const Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Développement Mobile",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              height: 2,
              color: Color(0xffb500b9),
              width: MediaQuery.of(context).size.width / 2,
            ),
            ApplicationPricingPage(),
            const Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Développement Logiciel",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              height: 2,
              color: Color(0xffb500b9),
              width: MediaQuery.of(context).size.width / 2,
            ),
            LogicielPricingPage(),
            const Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Marketing / Référencement",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              height: 2,
              color: Color(0xffb500b9),
              width: MediaQuery.of(context).size.width / 2,
            ),
            ReferencementPage(),
            const Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Cybersécurité",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              height: 2,
              color: Color(0xffb500b9),
              width: MediaQuery.of(context).size.width / 2,
            ),
            CyberPricingPage(),
            const Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Nos contrats de maintenance",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              height: 2,
              color: Color(0xffb500b9),
              width: MediaQuery.of(context).size.width / 2,
            ),
            CyberPricePage()
          ]),
        ),
      ),
    );
  }
}
