import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../subscribers_text_field_widget.dart';

class NewSubscribersWidget extends StatefulWidget {
  const NewSubscribersWidget({super.key});

  @override
  State<NewSubscribersWidget> createState() => _NewSubscribersWidgetState();
}

class _NewSubscribersWidgetState extends State<NewSubscribersWidget> {
  final List<String> list = <String>['Mensal', 'Trimestral', 'Anual'];
  String dropdownValue = 'Mensal';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black, width: .3)),
      child: Column(
        children: [
          Row(
            children: const [
              Expanded(child: SubscribersTextFieldWidget(label: "Nome")),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: SubscribersTextFieldWidget(label: "E-mail"),
              )),
              Expanded(child: SubscribersTextFieldWidget(label: "Telefone")),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Row(children: [
              const Expanded(
                  child:
                      SubscribersTextFieldWidget(label: "Modelo do Telefone")),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: DropdownButton(
                  value: dropdownValue,
                  onChanged: (value) {
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  isExpanded: true,
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              )),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: Text('Cadastrar',
                              style: TextStyle(fontSize: 4.sp))),
                    )),
              )
            ]),
          )
        ],
      ),
    );
  }

  DropdownMenuItem _returnDropDownMenuItem(String text) {
    return DropdownMenuItem(child: Text(text));
  }
}
