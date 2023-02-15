import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SubscribersTextFieldWidget extends StatefulWidget {
  final String? label;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final int? maxLength;
  const SubscribersTextFieldWidget(
      {super.key, this.label, this.onChanged, this.controller, this.maxLength});

  @override
  State<SubscribersTextFieldWidget> createState() =>
      _SubscribersTextFieldWidgetState();
}

class _SubscribersTextFieldWidgetState
    extends State<SubscribersTextFieldWidget> {
  bool obscured = true;

  @override
  void dispose() {
    widget.controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(5)),
      child: TextField(
        controller: widget.controller,
        inputFormatters: [LengthLimitingTextInputFormatter(widget.maxLength)],
        maxLengthEnforcement: widget.maxLength != null
            ? MaxLengthEnforcement.enforced
            : MaxLengthEnforcement.none,
        onChanged: (value) async {
          setState(() {});
          if (widget.onChanged != null) {
            await widget.onChanged!(value);
          }
        },
        decoration: InputDecoration(
          //labelText: widget.label,
          hintText: widget.label,
          // hintStyle: TextStyle(
          //     color: VitalTheme.CB4B4B1, fontWeight: FontWeight.bold),
          // labelStyle: TextStyle(
          //   color: VitalTheme.CB4B4B1,
          // ),
          filled: false, // Needed for adding a fill color
          //fillColor: Colors.grey.shade800,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none, // No border
          ),
          focusedBorder:
              const UnderlineInputBorder(borderSide: BorderSide.none),
          suffixIconConstraints:
              const BoxConstraints(maxHeight: 25, maxWidth: 25),
        ),
      ),
    );
  }
}
