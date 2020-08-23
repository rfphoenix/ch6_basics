import 'package:flutter/material.dart';

class FlatButtonWidget extends StatelessWidget {
  const FlatButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
