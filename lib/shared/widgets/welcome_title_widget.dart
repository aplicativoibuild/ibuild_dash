import 'package:flutter/material.dart';

class WelcomeTitleWidget extends StatelessWidget {
  final String pageName;
  const WelcomeTitleWidget({super.key, required this.pageName});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: const TextSpan(
            text: 'Seja bem-vindo, ',
            style: TextStyle(
              fontSize: 19,
              color: Colors.blue,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text('Você está em: $pageName',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.blue,
                fontWeight: FontWeight.w300,
              )),
        ),
        const Divider(
          color: Colors.blue,
          height: 15,
        ),
      ],
    );
  }
}
