import 'package:flutter/material.dart';
import 'package:news_app_16710051/components/customListTile.dart';
import 'package:news_app_16710051/model/article_model.dart';
import 'package:news_app_16710051/services/api_service.dart';

class ArticlesPage extends StatefulWidget {
  const ArticlesPage({Key key, this.category, this.title}) : super(key: key);

  final String category;
  final String title;

  @override
  _ArticlesPageState createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {
  ApiService client = ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.menu),
        title: Text(widget.title),
        actions: [
          Icon(Icons.more_vert),
        ],
        //backgroundColor: Colors.purple,
      ),
      body: FutureBuilder(
        future: client.getArticle(widget.category),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data;
            return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) =>
                    customListTile(articles[index], context));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
