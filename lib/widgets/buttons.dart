import 'package:flutter/material.dart';

class FlatButtonWidget extends StatelessWidget {
  const FlatButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        FlatButton(
          onPressed: () {},
          child: Text('Flag'),
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        FlatButton(
          onPressed: () {},
          child: Icon(Icons.flag),
          color: Colors.lightGreen,
          textColor: Colors.white,
        ),
      ],
    );
  }
}

class ButtonBarWidget extends StatelessWidget {
  const ButtonBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: ButtonBar(
        alignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.map),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.airport_shuttle),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.brush),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class RaiseButtonWidget extends StatelessWidget {
  const RaiseButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        RaisedButton(
          child: Text('save'),
          onPressed: () {},
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        RaisedButton(
          child: Icon(Icons.save),
          color: Colors.lightGreen,
          onPressed: () {},
        ),
      ],
    );
  }
}

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        IconButton(
          icon: Icon(Icons.flight),
          onPressed: () {},
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        IconButton(
          icon: Icon(Icons.flight),
          iconSize: 42.0,
          color: Colors.lightGreen,
          tooltip: 'Flight',
          onPressed: () {},
        ),
      ],
    );
  }
}
