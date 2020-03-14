import 'package:flutter/material.dart';

class FirstClassPage extends StatelessWidget {
  final _color = 0xff0062e1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(_color),
      appBar: _appBar(),
      body: _body(),
    );
  }

  Widget _appBar() {
    return AppBar(
      backgroundColor: Color(_color),
      elevation: 0,
      title: Text(
        'Menu',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 32,
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16),
          child: Icon(
            Icons.search,
            color: Colors.white,
            size: 32,
          ),
        ),
      ],
    );
  }

  Widget _item(String title, IconData icon, Color color) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(4)),
      height: 100,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              icon,
              color: color,
              size: 32,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }

  Widget _row(Widget item1, Widget item2) {
    return Row(
      children: <Widget>[
        Expanded(child: item1),
        Expanded(child: item2),
      ],
    );
  }

  Widget _body() {
    return Column(
      children: <Widget>[
        _row(
          _item('Find friends', Icons.search, Colors.red),
          _item('Groups', Icons.group, Colors.green),
        ),
        _row(
          _item('Marketplace', Icons.shopping_cart, Colors.purple),
          _item('Videos on Watch', Icons.videocam, Colors.orange),
        ),
        _row(
          _item('Events', Icons.place, Colors.teal),
          _item('Memories', Icons.query_builder, Colors.brown),
        ),
        _row(
          _item('Find friends', Icons.search, Colors.red),
          _item('Groups', Icons.group, Colors.green),
        ),
        _row(
          _item('Find friends', Icons.search, Colors.red),
          _item('Groups', Icons.group, Colors.green),
        ),
      ],
    );
  }
}
