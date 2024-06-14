import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:ohana_app/main.dart';

class ArticleDetailPage extends StatelessWidget {
  final String id;

  const ArticleDetailPage({super.key, required this.id});

  Future<Article> fetchArticleDetails() async {
    final docSnapshot =
        await FirebaseFirestore.instance.collection('article').doc(id).get();
    return Article.fromFirestore(docSnapshot);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: FutureBuilder<Article>(
        future: fetchArticleDetails(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final article = snapshot.data!;
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(article.image),
                    SizedBox(height: 10),
                    Text(article.title,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text("Publié le: ${article.publishDate}"),
                    SizedBox(height: 10),
                    Text(article.description),
                    SizedBox(height: 20),
                    ...article.paragraphs
                        .map((paragraph) => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (paragraph.subtitle.isNotEmpty)
                                  Text(paragraph.subtitle,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                if (paragraph.urlImage.isNotEmpty)
                                  Image.network(paragraph.urlImage),
                                _buildQuillEditor(paragraph.text),
                                if (paragraph.video.isNotEmpty)
                                  // Add video player widget here if needed
                                  SizedBox.shrink(),
                                SizedBox(height: 20),
                              ],
                            ))
                        .toList(),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }

  Widget _buildQuillEditor(String jsonString) {
    var document = quill.Document.fromJson(jsonDecode(jsonString));
    var controller = quill.QuillController(
      document: document,
      selection: const TextSelection.collapsed(offset: 0),
    );

    return quill.QuillEditor.basic(
        configurations: quill.QuillEditorConfigurations(
            controller: controller, enableInteractiveSelection: false));
  }
}

class Article {
  final String id;
  final String title;
  final String description;
  final String image;
  final String publishDate;
  final String updateDate;
  final List<Paragraph> paragraphs;

  Article({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.publishDate,
    required this.updateDate,
    required this.paragraphs,
  });

  factory Article.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Article(
      id: doc.id,
      title: data['title'] ?? '',
      description: data['description'] ?? '',
      image: data['image'] ?? '',
      publishDate: data['publish_date'] ?? '',
      updateDate: data['update_date'] ?? '',
      paragraphs: (data['paragraphs'] as List? ?? [])
          .map((paragraph) => Paragraph.fromMap(paragraph))
          .toList(),
    );
  }
}

class Paragraph {
  final String text;
  final String urlImage;
  final String subtitle;
  final String video;

  Paragraph({
    required this.text,
    required this.urlImage,
    required this.subtitle,
    required this.video,
  });

  factory Paragraph.fromMap(Map<String, dynamic> map) {
    return Paragraph(
      text: map['text'] ?? '',
      urlImage: map['url_image'] ?? '',
      subtitle: map['subtitle'] ?? '',
      video: map['video'] ?? '',
    );
  }
}
