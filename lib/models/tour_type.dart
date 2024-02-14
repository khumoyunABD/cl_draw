import 'package:flutter/material.dart';

enum TourTypes {
  worldCup,
  euro,
  championsLeague,
  europaLeague,
}

class TourType {
  const TourType(
    this.title,
    this.numOfTeams,
    this.image,
  );

  final String title;
  final int numOfTeams;
  final Image image;
}
