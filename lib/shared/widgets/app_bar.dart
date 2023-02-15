import 'package:flutter/material.dart';

class AppBarDefault extends StatefulWidget implements PreferredSizeWidget {
  AppBarDefault({Key? key, this.color = Colors.white})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; 
  final color;
  @override
  _AppBarDefaultState createState() => _AppBarDefaultState();
}

class _AppBarDefaultState extends State<AppBarDefault> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                  Image.asset(
                 '/images/logoicon.jpg',
                  fit: BoxFit.contain,
                  height: 32,
              ),
              Container(
              padding: const EdgeInsets.all(8.0), 
              child: const Text('iBuild',style: TextStyle(
              fontSize: 19,
              color: Colors.white,
              fontWeight: FontWeight.w300,
              ),))
            ],
          ),
  
      centerTitle: false,
      elevation: 0.0,
      //foregroundColor: Colors.blueAccent[200],
      backgroundColor: Colors.blue,
      actions: [
         Row(
          children: const [
           Text("Beto"),
           Icon(Icons.arrow_drop_down)
          ],
        )
      ],
    );
  }
}
