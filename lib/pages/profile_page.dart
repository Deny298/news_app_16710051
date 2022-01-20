import 'package:flutter/material.dart';
import 'package:news_app_16710051/model/article_model.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.1, 0.9],
                      colors: [
                        hexToColor('#405FA3'),
                        hexToColor('#1ED69D'),
                      ],
                    ),
                  ),
                  child: Container(
                    //height: 150,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(),
                    child: _buildAvatar(),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Nama Developer",
                              style: TextStyle(
                                fontSize: 16,
                              )),
                          const SizedBox(
                            height: 8.0,
                          ),
                          TextFormField(
                            readOnly: true,
                            initialValue: 'Denny Setiawan',
                            //controller: controller.profileNameController,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1.0, color: Colors.black12),
                              ),
                              border: OutlineInputBorder(),
                              //labelText: 'Nama Lengkap',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("NPM",
                              style: TextStyle(
                                fontSize: 16,
                              )),
                          const SizedBox(
                            height: 8.0,
                          ),
                          TextFormField(
                            readOnly: true,
                            initialValue: '16710051',
                            //controller: controller.profileNameController,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1.0, color: Colors.black12),
                              ),
                              border: OutlineInputBorder(),
                              //labelText: 'Nama Lengkap',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Kelas",
                              style: TextStyle(
                                fontSize: 16,
                              )),
                          const SizedBox(
                            height: 8.0,
                          ),
                          TextFormField(
                            readOnly: true,
                            initialValue: 'Kelas 6A',
                            //controller: controller.profileNameController,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1.0, color: Colors.black12),
                              ),
                              border: OutlineInputBorder(),
                              //labelText: 'Nama Lengkap',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Kontak",
                              style: TextStyle(
                                fontSize: 16,
                              )),
                          const SizedBox(
                            height: 8.0,
                          ),
                          TextFormField(
                            readOnly: true,
                            initialValue: '085751480004',
                            //controller: controller.profileNameController,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1.0, color: Colors.black12),
                              ),
                              border: OutlineInputBorder(),
                              //labelText: 'Nama Lengkap',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Alamat",
                              style: TextStyle(
                                fontSize: 16,
                              )),
                          const SizedBox(
                            height: 8.0,
                          ),
                          TextFormField(
                            readOnly: true,
                            initialValue:
                                'Jl. Sungai andai komp purnama permai 1 jalur 2',
                            //controller: controller.profileNameController,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1.0, color: Colors.black12),
                              ),
                              border: OutlineInputBorder(),
                              //labelText: 'Nama Lengkap',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatar() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
              height: 110,
              width: 110,
              child: Image(image: AssetImage('assets/avatar-2.png'))),
          Container(
            width: 110,
            height: 24,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: hexToColor('#9A434343'),
            ),
            child: Text(
              '',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}
