import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../shared/exchange_animation_widget.dart';
import '../../../../../shared/widgets/app_bar.dart';
import '../../../../../shared/widgets/app_drawer.dart';
import '../../../../../shared/widgets/welcome_title_widget.dart';
import '../../data/model/subscribers_model.dart';
import '../../data/subscribers_datasource.dart';
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
  bool animationForward = false;
  List<SubscribersModel> subscribers = [];
  List<SubscribersModel> expiredSubscribers = [];
  List<SubscribersModel> activeSubscribers = [];

  @override
  void initState() {
    super.initState();
    _initializate();
  }

  _initializate() async {
    await SubscribersDataSource().getSubscribers().then((value) {
      setState(() {
        subscribers = value;
        //ASSINANTES INATIVOS
        for (var element in value) {
          if (element.dataExpirar != null) {
            if (element.dataExpirar!.toDate().isBefore(DateTime.now())) {
              expiredSubscribers.add(element);
            }
          }
        }
        //ASSINANTES ATIVOS
        for (var element in value) {
          if (element.dataExpirar != null) {
            if (element.dataExpirar!.toDate().isAfter(DateTime.now())) {
              activeSubscribers.add(element);
            }
          }
        }
        animationForward = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarDefault(),
        drawer: const DrawerDefault(),
        body: ExchangeAnimationFade(
          animationForward: animationForward,
          firstWidget: const Center(
            child: CircularProgressIndicator(),
          ),
          secondWidget: SingleChildScrollView(
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
          number: 0,
          onTap: () => _changePage(0)),
      SubscribersCardParams(
          title: "Assinantes Ativos",
          number: activeSubscribers.length,
          onTap: () {}),
      SubscribersCardParams(
          title: "Assinantes Inativos",
          number: expiredSubscribers.length,
          onTap: () {}),
      SubscribersCardParams(
          title: "Assinantes Totais", number: subscribers.length, onTap: () {}),
      // SubscribersCardParams(
      //     title: "Receita (R\$) ", number: '1253,43', onTap: () {}),
    ];
  }
}
