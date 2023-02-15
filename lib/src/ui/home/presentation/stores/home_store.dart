import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ibuild_dash/src/models/partner.dart';
import 'package:ibuild_dash/src/services/partner_service.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

enum LoginStates { initial, loading, success, failure }

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {

  @observable
  LoginStates loginState = LoginStates.initial;
  String error = '';

  @action
  Future<int> getAllPartners() async {
    try {
      final List<PartnerModel> partners = await PartnerService().getPartners();
      return partners.length;
    } catch (e, s) {
      loginState = LoginStates.failure;
      error = 'Erro ao obter relátorio de parceiros';
      log('Falha ao realizar login', error: e, stackTrace: s);
      return Future.error(error);
    }
  }
}
