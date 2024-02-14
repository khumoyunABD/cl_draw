import 'package:cl_draw/data/tour_data.dart';
import 'package:cl_draw/models/tournament.dart';
import 'package:cl_draw/screens/tours_screen.dart';

import 'package:cl_draw/widgets/tour_type_item.dart';
import 'package:flutter/material.dart';

class TournamentTypeScreen extends StatelessWidget {
  const TournamentTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final championsLeague = tourData
        .where((tour) => tour.tourType.title.contains('ChampionsLeague'))
        .toList();
    final europaLeague = tourData
        .where((tour) => tour.tourType.title.contains('Europa League'))
        .toList();
    final worldCup = tourData
        .where((tour) => tour.tourType.title.contains('World Cup'))
        .toList();
    final euro =
        tourData.where((tour) => tour.tourType.title.contains('Euro')).toList();
    final List<Tournament> customTour = [];

    void pickTour(List<Tournament> tourList, String tourName) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => ToursScreen(
            tourList: tourList,
            tourName: tourName,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.outlineVariant,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.outlineVariant,
        title: const Text('Choose Tournament...'),
        centerTitle: false,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
        ),
        children: <Widget>[
          TourTypeItem(
            tournamentList: championsLeague,
            onSelectTour: (tourItem) {
              pickTour(tourItem, 'Champions League');
            },
            tourName: 'Champions League',
            tourImage: Image.asset('assets/images/cl.png'),
          ),
          TourTypeItem(
            tournamentList: europaLeague,
            onSelectTour: (tourItem) {
              pickTour(tourItem, 'Europa League');
            },
            tourName: 'Europa League',
            tourImage: Image.asset('assets/images/el.png'),
          ),
          TourTypeItem(
            tournamentList: worldCup,
            onSelectTour: (tourItem) {
              pickTour(tourItem, 'World Cup');
            },
            tourName: 'World Cup',
            tourImage: Image.asset('assets/images/wc.png'),
          ),
          TourTypeItem(
            tournamentList: euro,
            onSelectTour: (tourItem) {
              pickTour(tourItem, 'Euro');
            },
            tourName: 'Euro',
            tourImage: Image.asset('assets/images/euro.png'),
          ),
          // const SizedBox(
          //   height: 30,
          // ),
          TourTypeItem(
            tournamentList: customTour,
            onSelectTour: (tourItem) {
              pickTour(tourItem, 'Custom Tournament');
            },
            tourName: 'Custom Tournament',
            tourImage: Image.asset('assets/images/custom.png'),
          ),
        ],
      ),
    );
  }
}
