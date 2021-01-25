import 'package:flutter/material.dart';

class CandWidget extends StatefulWidget {
  VoidCallback tap;
  String text;
  int index;
  double width;
  double height;
  bool answerState;

  CandWidget(
      {this.tap,
      this.index,
      this.width,
      this.height,
      this.text,
      this.answerState});
  _CandWidgetState createState() => _CandWidgetState();
}

class _CandWidgetState extends State<CandWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width * 0.8,
      height: widget.height * 0.055,
      padding: EdgeInsets.fromLTRB(widget.width * 0.048, widget.height * 0.013,
          widget.width * 0.048, widget.height * 0.013),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.deepPurple),
          color: widget.answerState ? Colors.deepPurple : Colors.white),
      child: InkWell(
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: widget.width * 0.035,
            color: widget.answerState ? Colors.white : Colors.black,
          ),
        ),
        onTap: () {
          setState(
            () {
              widget.tap();
              widget.answerState = !widget.answerState;
            },
          );
        },
      ),
    );
  }
}
