import 'package:flutter/material.dart';
import 'package:ohana_app/main.dart';

class ArticlePage extends StatelessWidget {
  String texte =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image section
            SizedBox(
              child: Image(
                image: AssetImage('assets/images/article-image-petit.jpg'),
              ),
            ),
            SizedBox(height: 16.0),
            // Title section
            Text(
              'Titre de l\'article',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            // Subtitle or author
            Text(
              '01/01/2024',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16.0),
            // Article content
            Text(
              texte,
              style: TextStyle(
                fontSize: 16.0,
                height: 1.5,
              ),
            ),
            SizedBox(height: 16.0),
            // Another section with image
            Image(
              image: AssetImage('assets/images/article-image.jpg'),
            ),
            SizedBox(height: 16.0),
            // Additional text content
            Text(
              texte,
              style: TextStyle(
                fontSize: 16.0,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
