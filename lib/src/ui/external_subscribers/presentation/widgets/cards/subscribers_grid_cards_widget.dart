import 'package:flutter/material.dart';

import 'params/subscribers_cards_params.dart';
import 'subscribers_card_widget.dart';

class SubscribersGridViewCardsWidget extends StatelessWidget {
  final List<SubscribersCardParams> listSubscribersCard;
  const SubscribersGridViewCardsWidget(
      {super.key, required this.listSubscribersCard});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 5,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        crossAxisSpacing: 30,
        shrinkWrap: true,
        padding: const EdgeInsets.only(bottom: 20),
        children: List.generate(
            listSubscribersCard.length,
            (index) =>
                SubscribersCardWidget(params: listSubscribersCard[index])));
  }
}
