// ignore: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_training_ex/c6/widgets/ActiveIcon.dart';
import 'package:flutter_training_ex/c6/widgets/InactiveIcon.dart';

class carousel {
  final String image;
  final String name;
  final String imdb;
  final int id;
  const carousel(this.image, this.name, this.imdb, this.id);
  get getImage => image;
  get getName => name;
  get getImdb => imdb;
  get getId => id;
}
// ignore: camel_case_types
class function {
  final String image;
  final String title;
  const function(this.image, this.title);
  get getImage => image;
  get getName => title;
}

const items =  <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: InactiveIcon(image: 'assets/icons/Home.svg'),
    label: '',
    activeIcon: ActiveIcon(image: 'assets/icons/Home.svg'),
  ),
  BottomNavigationBarItem(
    icon: InactiveIcon(image: 'assets/icons/Heart.svg'),
    label: '',
    activeIcon: ActiveIcon(image: 'assets/icons/Heart.svg'),
  ),
  BottomNavigationBarItem(
    icon: InactiveIcon(image: 'assets/icons/ticket.svg'),
    label: '',
    activeIcon: ActiveIcon(image: 'assets/icons/ticket.svg'),
  ),
  BottomNavigationBarItem(
    icon: InactiveIcon(image: 'assets/icons/Account.svg'),
    label: '',
    activeIcon: ActiveIcon(image: 'assets/icons/Account.svg'),
  ),
  BottomNavigationBarItem(
    icon: InactiveIcon(image: 'assets/icons/shuffle.svg'),
    label: '',
    activeIcon: ActiveIcon(image: 'assets/icons/shuffle.svg'),
  ),
];