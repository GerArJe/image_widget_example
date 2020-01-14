import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: MyStatelessWidget()
        ),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Image.network(
        'https://i.pinimg.com/originals/63/64/fb/6364fbeede3157aac881ed9c088d9c26.png',
        loadingBuilder: (context, child, progress){
          return progress == null ? child : LinearProgressIndicator();
        },
        fit: BoxFit.contain,
        color: Colors.blue,
        colorBlendMode: BlendMode.darken,
      ),
    );
  }
}