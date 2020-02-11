import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _textStyleBold = GoogleFonts.poppins(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
    final _textStyleBoldTitle = GoogleFonts.poppins(
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontSize: 22,
    );
    final _textStyle = GoogleFonts.poppins(color: Colors.white);

    return Scaffold(
      body: Container(
        height: _size.height,
        width: _size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/img2.jpg'),
          ),
        ),
        padding: EdgeInsets.only(
          top: 40,
          right: 20,
          left: 20,
          bottom: 80,
        ),
        child: Container(
          // color: Colors.blue,
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.menu, size: 40, color: Colors.white),
                  Icon(Icons.favorite_border, size: 40, color: Colors.white),
                ],
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text('Elizabeth B.', style: _textStyleBoldTitle),
                          SizedBox(height: 20),
                          _postFollowersFollowing(_textStyleBold, _textStyle),
                          SizedBox(height: 20),
                          Text('Common Interests', style: _textStyleBold),
                          Wrap(
                            alignment: WrapAlignment.center,
                            children: <Widget>[
                              _customOutLineButton('Travel', _textStyle),
                              _customOutLineButton('Camping', _textStyle),
                              _customOutLineButton('Trekking', _textStyle),
                              _customOutLineButton('Charity', _textStyle),
                              _customOutLineButton('University', _textStyle),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -20,
                right: 0,
                left: 0,
                child: _customButton(_textStyle),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _customButton(TextStyle _textStyle) {
    return Container(
      alignment: Alignment.center,
      child: RaisedButton(
        // color: Color(0xfff8917b),
        color: Colors.deepOrange,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        elevation: 0,
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('FOLLOW', style: _textStyle),
        ),
      ),
    );
  }

  Widget _customOutLineButton(String text, TextStyle _style) {
    return Container(
      margin: EdgeInsets.all(4),
      child: OutlineButton(
        borderSide: BorderSide(color: Colors.white),
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Text(text, style: _style),
      ),
    );
  }

  Widget _postFollowersFollowing(TextStyle _bold, TextStyle _style) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Expanded(child: _columnItem('Posts', '140', _bold, _style)),
        Expanded(child: _columnItem('Followers', '1,2K', _bold, _style)),
        Expanded(child: _columnItem('Following', '156', _bold, _style)),
      ],
    );
  }

  Widget _columnItem(
      String title, String count, TextStyle _bold, TextStyle _style) {
    return Column(
      children: <Widget>[
        Text(title, style: _bold),
        SizedBox(height: 8),
        Text(count, style: _style),
      ],
    );
  }
}
