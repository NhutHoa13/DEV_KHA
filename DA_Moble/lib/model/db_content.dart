
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/item.dart';



class db_context {
  static List<Info> items = List.filled(
    0,
    Info(
      avatar: '',
      name: '',
      current_ranking: '',
      path_rank: '',
      number_rank: '',
     
    ),
    growable: true,
  );
  static void createData() {
    items.add(Info(
      avatar: 'assets/images/profile.png',
      name: 'Pro Player 1',
      current_ranking: '1000',
      path_rank: 'assets/images/medal (1).png',
      number_rank: '',
     
    ));
    items.add(Info(
      avatar: 'assets/images/profile.png',
      name: 'Pro Player 1',
      current_ranking: '1000',
      path_rank: 'assets/images/medal (2).png',
      number_rank: '',
     
    )); items.add(Info(
      avatar: 'assets/images/profile.png',
      name: 'Pro Player 1',
      current_ranking: '1000',
      path_rank: 'assets/images/medal (3).png',
      number_rank: '',
     
    )); items.add(Info(
      avatar: 'assets/images/profile.png',
      name: 'Pro Player 1',
      current_ranking: '1000',
      path_rank: 'assets/images/profile.png',
      number_rank: '4',
     
    )); items.add(Info(
      avatar: 'assets/images/profile.png',
      name: 'Pro Player 1',
      current_ranking: '1000',
      path_rank: 'assets/images/profile.png',
      number_rank: '5',
     
    )); items.add(Info(
      avatar: 'assets/images/profile.png',
      name: 'Pro Player 1',
      current_ranking: '1000',
      path_rank: 'assets/images/profile.png',
      number_rank: '6',
     
    )); items.add(Info(
      avatar: 'assets/images/profile.png',
      name: 'Pro Player 1',
      current_ranking: '1000',
      path_rank: 'assets/images/profile.png',
      number_rank: '7',
     
    )); items.add(Info(
      avatar: 'assets/images/profile.png',
      name: 'Pro Player 1',
      current_ranking: '1000',
      path_rank: 'assets/images/profile.png',
     number_rank: '8',
    )); items.add(Info(
      avatar: 'assets/images/profile.png',
      name: 'Pro Player 1',
      current_ranking: '1000',
      path_rank: 'assets/images/profile.png',
     number_rank: '9',
    )); items.add(Info(
      avatar: 'assets/images/profile.png',
      name: 'Pro Player 1',
      current_ranking: '1000',
      path_rank: 'assets/images/profile.png',
     number_rank: '10',
    ));
  }
}
