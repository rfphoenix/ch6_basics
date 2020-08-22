import 'package:flutter/material.dart';
import 'package:starter_project/widgets/column_row.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() {
    return _HomeState();
  }
}

class ContainerWithBoxDecorationWidget extends StatelessWidget {
  const ContainerWithBoxDecorationWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 100.0,
          child: ColumnAndRowNestingWidget(),
        ),
      ],
    );
  }
}

class TextWidgetWithProperties extends StatelessWidget {
  const TextWidgetWithProperties({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Flutter World for Mobile',
      style: TextStyle(
          fontSize: 24.0,
          color: Colors.deepPurple,
          decoration: TextDecoration.underline,
          decorationColor: Colors.deepPurpleAccent,
          decorationStyle: TextDecorationStyle.dotted,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold),
    );
  }
}

class TextWidgetRichText extends StatelessWidget {
  const TextWidgetRichText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
      text: 'Flutter World',
      style: TextStyle(
        fontSize: 24.0,
        color: Colors.deepPurple,
        decoration: TextDecoration.underline,
        decorationColor: Colors.deepPurpleAccent,
        decorationStyle: TextDecorationStyle.dotted,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.normal,
      ),
      children: <TextSpan>[
        TextSpan(text: ' for'),
        TextSpan(
          text: ' Mobile',
          style: TextStyle(
              color: Colors.deepOrange,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold),
        ),
      ],
    ));
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Text('Home'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
        ],
        flexibleSpace: SafeArea(
            child: Icon(
          Icons.photo_camera,
          size: 75.0,
          color: Colors.white70,
        )),
        bottom: PreferredSize(
            child: Container(
              color: Colors.lightGreen.shade100,
              height: 75.0,
              width: double.infinity,
              child: Center(
                child: Text('Bottom'),
              ),
            ),
            preferredSize: Size.fromHeight(75.0)),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const ContainerWithBoxDecorationWidget(),
            ],
          ),
        )),
      ),
    );
  }
}
