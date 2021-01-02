import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List mydata = [
    {
      'icon': Icon(Icons.home),
      'text': Text('Home'),
      'colors': Colors.orange,
    },
    {
      'icon': Icon(Icons.contact_phone),
      'text': Text('Contact'),
      'colors': Colors.green,
    },
    {
      'icon': Icon(Icons.person),
      'text': Text('Profile'),
      'colors': Colors.yellow,
    },
    {
      'icon': Icon(Icons.article),
      'text': Text('About Us'),
      'colors': Colors.blue,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          title: Text(
            'My App',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              itemCount: mydata.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  margin: EdgeInsets.all(0.0),
                  child: Container(
                    height: 139.1,
                    color: mydata[index]['colors'],
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          //padding: EdgeInsets.all(8.0),
                          //margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.deepPurple),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                          child: IconButton(
                            icon: mydata[index]['icon'],
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          margin: EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          child: Center(child: mydata[index]['text']),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                height: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
