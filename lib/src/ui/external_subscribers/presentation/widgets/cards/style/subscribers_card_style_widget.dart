import 'package:flutter/material.dart';

class SubscribersCardStyleWidget extends StatefulWidget {
  final Function()? onTap;
  final Widget child;
  const SubscribersCardStyleWidget(
      {super.key, required this.child, this.onTap});

  @override
  State<SubscribersCardStyleWidget> createState() =>
      _SubscribersCardStyleWidgetState();
}

class _SubscribersCardStyleWidgetState
    extends State<SubscribersCardStyleWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.black26, width: 1),
            borderRadius: BorderRadius.circular(10)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 10,
        child: InkWell(
            splashColor: Colors.blue,
            splashFactory: InkRipple.splashFactory,
            onTap: widget.onTap,
            child: widget.child));
  }
}
