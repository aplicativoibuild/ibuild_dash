import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../data/model/subscribers_model.dart';
import '../../../data/subscribers_datasource.dart';
import '../subscribers_text_field_widget.dart';

class NewSubscribersWidget extends StatefulWidget {
  const NewSubscribersWidget({super.key});

  @override
  State<NewSubscribersWidget> createState() => _NewSubscribersWidgetState();
}

class _NewSubscribersWidgetState extends State<NewSubscribersWidget> {
  final List<String> list = <String>['Mensal', 'Trimestral', 'Anual'];
  String dropdownValue = 'Mensal';
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerTelefone = TextEditingController();
  final TextEditingController _controllerModeloTelefone =
      TextEditingController();

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
            children: [
              Expanded(
                  child: SubscribersTextFieldWidget(
                      controller: _controllerName, label: "Nome")),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: SubscribersTextFieldWidget(
                    controller: _controllerEmail, label: "E-mail"),
              )),
              Expanded(
                  child: SubscribersTextFieldWidget(
                      controller: _controllerTelefone, label: "Telefone")),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Row(children: [
              Expanded(
                  child: SubscribersTextFieldWidget(
                      controller: _controllerModeloTelefone,
                      label: "Modelo do Telefone")),
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
                    onPressed: () async {
                      if (_controllerName.text.isNotEmpty &&
                          _controllerEmail.text.isNotEmpty &&
                          _controllerModeloTelefone.text.isNotEmpty &&
                          _controllerTelefone.text.isNotEmpty) {
                        Timestamp time;
                        if (dropdownValue.toString() == 'Mensal') {
                          time = Timestamp.fromDate(
                              DateTime.now().add(const Duration(days: 30)));
                        } else if (dropdownValue.toString() == 'Trimestral') {
                          time = Timestamp.fromDate(
                              DateTime.now().add(const Duration(days: 90)));
                        } else {
                          time = Timestamp.fromDate(
                              DateTime.now().add(const Duration(days: 360)));
                        }

                        await SubscribersDataSource()
                            .setSubscribers(SubscribersModel(
                                nome: _controllerName.text,
                                email: _controllerEmail.text,
                                modeloTelefone: _controllerModeloTelefone.text,
                                telefone: _controllerTelefone.text,
                                dataExpirar: time))
                            .then((value) => showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  // retorna um objeto do tipo Dialog
                                  return AlertDialog(
                                    title: Text(value
                                        ? 'CADASTRADO COM SUCESSO'
                                        : 'FALHA AO CADASTRAR USUARIO. (USUÁRIO NÃO TEM CADASTRO)'),
                                    actions: <Widget>[
                                      // define os botões na base do dialogo
                                      ElevatedButton(
                                        child: const Text("Fechar"),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                }));
                      } else {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              // retorna um objeto do tipo Dialog
                              return AlertDialog(
                                title: const Text('PREENCHA TODOS OS CAMPOS'),
                                actions: <Widget>[
                                  // define os botões na base do dialogo
                                  ElevatedButton(
                                    child: const Text("Fechar"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            });
                      }
                    },
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
}
