import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class SubscribersCardParams extends Equatable {
  /// Icone do Card
  final IconData? icon;

  /// Cor do Icone
  final Color? iconColor;

  /// Titulo do Card
  final String title;

  /// Titulo do Card
  final String number;

  /// Função ao clicar no Card
  final VoidCallback onTap;

  const SubscribersCardParams(
      {this.icon,
      required this.number,
      required this.title,
      required this.onTap,
      this.iconColor = Colors.blue});

  @override
  List<Object?> get props => [icon, iconColor, title, onTap];
}
