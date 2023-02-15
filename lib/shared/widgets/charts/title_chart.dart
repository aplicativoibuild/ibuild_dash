import 'package:flutter/material.dart';


class TitleChart extends StatelessWidget {
    String title;
    final IconData icon;
   TitleChart({
    Key? key, required this.title, required this.icon
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
        Icon(icon,size: 25,color: Colors.blue,)
        ],
      ),
        const SizedBox(
          width: 5,
        ),
         Text(
          title,
          style: TextStyle(color: Colors.blue, fontSize: 16),
        ),
      ],
    );
  }
}