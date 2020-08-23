import 'package:flutter/material.dart';
import 'package:starter_project/models/menuitem.dart';

class PopupMenuButtonWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const PopupMenuButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<TodoMenuItem> foodMenuList = [
      TodoMenuItem(title: 'Fast Food', icon: Icon(Icons.fastfood)),
      TodoMenuItem(title: 'Remind Me', icon: Icon(Icons.add_alarm)),
      TodoMenuItem(title: 'Flight', icon: Icon(Icons.flight)),
      TodoMenuItem(title: 'Music', icon: Icon(Icons.audiotrack)),
    ];

    return Container(
      color: Colors.lightGreen.shade100,
      height: preferredSize.height,
      width: double.infinity,
      child: Center(
        child: PopupMenuButton<TodoMenuItem>(
          icon: Icon(Icons.view_list),
          onSelected: ((valueSelected) {
            print('valueSelected: $valueSelected.title');
          }),
          itemBuilder: (BuildContext context) {
            return foodMenuList.map((TodoMenuItem todoMenuItem) {
              return PopupMenuItem<TodoMenuItem>(
                value: todoMenuItem,
                child: Row(
                  children: <Widget>[
                    Icon(todoMenuItem.icon.icon),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                    ),
                    Text(todoMenuItem.title),
                  ],
                ),
              );
            }).toList();
          },
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(75.0);
}
