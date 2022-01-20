import 'package:flutter/material.dart';
import 'package:news_app_16710051/services/api_service.dart';
import 'package:news_app_16710051/pages/articles.dart';
import 'package:news_app_16710051/pages/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiService client = ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text('News App'),
          actions: [
            Icon(Icons.more_vert),
          ],
          //backgroundColor: Colors.purple,
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 20,
          mainAxisSpacing: 5,
          crossAxisCount: 2,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ArticlesPage(
                              category: 'otomotif',
                              title: 'Automotive',
                            )));
              },
              //style: ElevatedButton.styleFrom(primary: Colors.white, onPrimary: Colors.white, elevation: 0),
              child: Column(
                children: <Widget>[
                  Container(
                      height: 125,
                      alignment: Alignment.center,
                      //child: Text('ok'),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(76, 208, 255, 1.0),
                        border: Border.all(color: Colors.grey.shade300),
                        //borderRadius: BorderRadius.circular(15)
                      ),
                      child: Image(
                        image: AssetImage('assets/img01.jpg'),
                      )),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text('Otomotive')
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ArticlesPage(
                              category: 'olahraga',
                              title: 'Sports',
                            )));
              },
              //style: ElevatedButton.styleFrom(primary: Colors.white, onPrimary: Colors.white, elevation: 0),
              child: Column(
                children: <Widget>[
                  Container(
                      height: 125,
                      alignment: Alignment.center,
                      //child: Text('ok'),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(76, 208, 255, 1.0),
                        border: Border.all(color: Colors.grey.shade300),
                        //borderRadius: BorderRadius.circular(15)
                      ),
                      child: Image(
                        image: AssetImage('assets/img02.jpg'),
                      )),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text('Sport')
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              //style: ElevatedButton.styleFrom(primary: Colors.white, onPrimary: Colors.white, elevation: 0),
              child: Column(
                children: <Widget>[
                  Container(
                      height: 125,
                      alignment: Alignment.center,
                      //child: Text('ok'),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(76, 208, 255, 1.0),
                        border: Border.all(color: Colors.grey.shade300),
                        //borderRadius: BorderRadius.circular(15)
                      ),
                      child: Image(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('assets/img03.jpg'),
                      )),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text('Profile')
                ],
              ),
            ),
          ],
        ));
  }
}
