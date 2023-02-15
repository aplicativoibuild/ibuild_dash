import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ibuild_dash/src/models/comment.dart';
import 'package:ibuild_dash/src/models/partner.dart';
import 'package:ibuild_dash/src/models/user.dart';
import 'package:ibuild_dash/src/services/comments_service.dart';
import 'package:ibuild_dash/src/services/partner_service.dart';
import 'package:ibuild_dash/src/services/user_service.dart';
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

  @action
  Future<int> getAllUsers() async {
    try {
      final List<UserModel> users = await UserService().getUsers();
      return users.length;
    } catch (e, s) {
      loginState = LoginStates.failure;
      error = 'Erro ao obter usuários';
      log('Falha ao realizar login', error: e, stackTrace: s);
      return Future.error(error);
    }
  }

  @action
  Future<int> getAllPayingUsers() async {
    try {
      final List<UserModel> users = await UserService().getPayingUsers();
      return users.length;
    } catch (e, s) {
      loginState = LoginStates.failure;
      error = 'Erro ao obter usuários';
      log('Falha ao realizar login', error: e, stackTrace: s);
      return Future.error(error);
    }
  }


  @action
  Future<int> getAllNotPayingUsers() async {
    try {
      final List<UserModel> users = await UserService().getUsers();
      final int count = await UserService().getNotPayingUsers();
      return count;
    } catch (e, s) {
      loginState = LoginStates.failure;
      error = 'Erro ao obter usuários';
      log('Falha ao realizar login', error: e, stackTrace: s);
      return Future.error(error);
    }
  }

  @action
  Future<int> getComments() async {
    try {
      final List<CommentModel> comment = await CommentsService().getComments();
      return comment.length;
    } catch (e, s) {
      loginState = LoginStates.failure;
      error = 'Erro ao obter comentários';
      log('Falha ao realizar login', error: e, stackTrace: s);
      return Future.error(error);
    }
  }

   
}
