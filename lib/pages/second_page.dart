import 'package:flutter/material.dart';
import 'package:flutter_challenge/utils/utils.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: _listCircleColor(),
          ),
          Expanded(
            flex: 3,
            child: _listVariantColor(Colors.red),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: _bottomAppBar(),
    );
  }

  Widget _listVariantColor(Color color) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: List<Widget>.generate(
        10,
        (index) {
          return (index == 0) ? _title() : _itemList(index, Colors.red);
        },
      ),
    );
  }

  Widget _listCircleColor() {
    return ListView(physics: BouncingScrollPhysics(), children: [
      _itemCircle(Colors.red),
      _itemCircle(Colors.pink),
      _itemCircle(Colors.purple),
      _itemCircle(Colors.indigo),
      _itemCircle(Colors.blue),
      _itemCircle(Colors.cyan),
      _itemCircle(Colors.teal),
      _itemCircle(Colors.green),
      _itemCircle(Colors.lime),
      _itemCircle(Colors.amber),
    ]);
  }

  Widget _itemList(int index, MaterialColor color) {
    final range = index * 100;
    return Card(
      margin: EdgeInsets.all(8),
      child: Container(
        height: 200,
        color: color[range],
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                range.toString(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                Utils.colorToString(color),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.all(8),
              alignment: Alignment.centerRight,
              child: Icon(Icons.content_copy),
            )
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return Padding(
      padding: const EdgeInsets.only(right: 16, top: 8),
      child: Container(
        alignment: Alignment.centerRight,
        child: Text(
          'Red',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _bottomAppBar() {
    return BottomAppBar(
      notchMargin: 8,
      shape: CircularNotchedRectangle(),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.menu),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.settings),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.favorite_border),
          ),
        ],
      ),
    );
  }

  Widget _itemCircle(Color color) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: CircleAvatar(
        radius: 24,
        backgroundColor: color,
      ),
    );
  }
}
