import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'params/subscribers_cards_params.dart';
import 'style/subscribers_card_style_widget.dart';

class SubscribersCardWidget extends StatefulWidget {
  final SubscribersCardParams params;
  const SubscribersCardWidget({Key? key, required this.params})
      : super(key: key);

  @override
  State<SubscribersCardWidget> createState() => _SubscribersCardWidgetState();
}

class _SubscribersCardWidgetState extends State<SubscribersCardWidget> {
  bool showDescription = false;

  @override
  Widget build(BuildContext context) {
    return SubscribersCardStyleWidget(
        onTap: widget.params.onTap,
        child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 40),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.params.title,
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 4.sp, fontWeight: FontWeight.w500),
                  ),
                  if (widget.params.icon != null) ...[
                    Icon(widget.params.icon, size: 70)
                  ] else ...[
                    Text(
                      widget.params.number.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 7.sp, fontWeight: FontWeight.w500),
                    )
                  ]
                ])));
  }
}
