import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../shared/widgets/app_bar.dart';
import '../../../../../shared/widgets/app_drawer.dart';
import '../../../../../shared/widgets/welcome_title_widget.dart';
import '../widgets/cards/params/subscribers_cards_params.dart';
import '../widgets/cards/subscribers_grid_cards_widget.dart';
import '../widgets/new_subscribers/new_subscribers_widget.dart';

class ExternalSubscribersPage extends StatefulWidget {
  const ExternalSubscribersPage({super.key});

  @override
  State<ExternalSubscribersPage> createState() =>
      _ExternalSubscribersPageState();
}

class _ExternalSubscribersPageState extends State<ExternalSubscribersPage> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarDefault(),
        drawer: const DrawerDefault(),
        body: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: 85.w,
              child: Column(
                children: [
                  const WelcomeTitleWidget(pageName: 'Assinantes Externos'),
                  Center(
                      child: SizedBox(
                          width: 65.w,
                          child: SubscribersGridViewCardsWidget(
                              listSubscribersCard: _listSubscribersCard()))),
                  if (page == 0) ...[const NewSubscribersWidget()]
                ],
              ),
            ),
          ),
        ));
  }

  _changePage(int number) {
    setState(() {
      page = number;
    });
  }

  List<SubscribersCardParams> _listSubscribersCard() {
    return [
      SubscribersCardParams(
          title: "Novo Assinante",
          icon: Icons.add,
          number: '15',
          onTap: () => _changePage(0)),
      SubscribersCardParams(
          title: "Assinantes Ativos",
          number: '15',
          onTap: () => _changePage(1)),
      SubscribersCardParams(
          title: "Assinantes Inativos",
          number: '4',
          onTap: () => _changePage(2)),
      SubscribersCardParams(
          title: "Assinantes Totais",
          number: '19',
          onTap: () => _changePage(3)),
      SubscribersCardParams(
          title: "Receita (R\$) ",
          number: '1253,43',
          onTap: () => _changePage(4)),
    ];
  }
}
