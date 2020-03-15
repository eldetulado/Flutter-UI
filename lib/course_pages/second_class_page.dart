import 'package:flutter/material.dart';

class SecondClassPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[800],
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Column(
            children: <Widget>[
              _image(),
              _form(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _image() {
    return Container(
      margin: EdgeInsets.only(top: 20, right: 20),
      alignment: Alignment.centerRight,
      child: Image.asset(
        'assets/images/health.png',
        width: 150,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _titleForm() {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Welcome to',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Health ',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text(
                'Care',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _button() {
    return Container(
      alignment: Alignment.centerRight,
      child: RaisedButton(
        onPressed: () {},
        shape: StadiumBorder(),
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('LOGIN'),
              SizedBox(width: 10),
              Icon(Icons.arrow_forward, color: Colors.white),
            ],
          ),
        ),
        textColor: Colors.white,
      ),
    );
  }

  Widget _textForget() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text(
        'Forgot Password?',
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _form() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      margin: EdgeInsets.only(right: 30, top: 30),
      padding: EdgeInsets.only(top: 20, bottom: 20, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _titleForm(),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'Enter your username',
              prefixIcon: Icon(Icons.person_outline),
            ),
          ),
          SizedBox(height: 30),
          TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'Enter your password',
              prefixIcon: Icon(Icons.lock_outline),
            ),
            obscureText: true,
          ),
          SizedBox(height: 30),
          _button(),
          SizedBox(height: 30),
          _textForget(),
        ],
      ),
    );
  }
}
