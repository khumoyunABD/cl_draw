import 'package:cl_draw/models/tour_type.dart';
import 'package:flutter/material.dart';

final tourTypes = {
  TourTypes.championsLeague: TourType(
    'ChampionsLeague',
    32,
    Image.asset(
      'assets/images/cl.png',
    ),
  ),
  TourTypes.euro: TourType(
    'Euro',
    24,
    Image.asset(
      'assets/images/euro.png',
    ),
  ),
  TourTypes.europaLeague: TourType(
    'Europa League',
    32,
    Image.asset(
      'assets/images/el.png',
    ),
  ),
  TourTypes.worldCup: TourType(
    'World Cup',
    32,
    Image.asset(
      'assets/images/wc.png',
    ),
  ),
};
